# Architecture

## Directory Structure
This project is structured with an architecture inspired by MVVM, Clean Architecture, and DDD (Domain-Driven Design).

### common
The `common` directory contains constants, routing, and DI providers that are used throughout the entire app.

### domain (Domain Layer)
The `domain` directory manages the application's business logic and domain models (data structures and processes with business meaning). Domain models are organized by context.

### generated
The `generated` directory contains auto-generated files. Do not edit these files directly.

### i18n
The `i18n` directory manages resource files for internationalization (i18n) and multilingual support.

### infrastructure (Infrastructure Layer)
The `infrastructure` directory contains code for the infrastructure layer, such as database and external API definitions. Repository implementations are also placed here.

### presantation (Presentation Layer)
The `presantation` directory manages the presentation (UI) layer of the application. It separates UI (View) and UI state (ViewModel) for better separation of concerns.

### usecase (Usecase Layer)
The `usecase` directory manages the usecase layer, which defines the application's specific operations and processing flows. Usecases are organized by context.

```
lib
 ├── common
 │   ├── constants
 │   ├── provider
 │   └── router
 ├── domain
 │   ├── dify
 │   ├── history
 │   ├── progress
 │   ├── question
 │   └── context
 ├── generated
 │   ├── common
 │   ├── domain
 │   ├── i18n
 │   ├── infrastructure
 │   └── presantation
 ├── i18n
 │   ├── en
 │   └── ja
 ├── infrastructure
 │   ├── data
 │   └── repository
 ├── presantation
 │   ├── history
 │   ├── history_list
 │   ├── home
 │   ├── question
 │   ├── section
 │   ├── section_list
 │   └── setting
 └── usecase
     ├── dify
     ├── history
     ├── progress
     ├── question
     └── setting
```

---

## Example Flow: From Screen Creation to Database Save

![Flow Sample](README_image/architecture/flow_sample.png)

As shown above, the process flows in the order: UI → ViewModel → UseCase → Repository (Interface) → Repository (Implementation) → Infrastructure (DB), ensuring clear separation of responsibilities and dependency injection for repository implementations.

```mermaid
flowchart LR
    UI[UI] --> VM[ViewModel]
    VM --> UC[UseCase]
    UC --> RepoIF[Repository Interface]
    RepoIF -. inject .-> RepoImpl[Repository Implementation]
    RepoImpl --> Infra[Infrastructure]
```

- The UseCase depends on a Repository Interface (abstract class).
- The actual Repository Implementation is injected (via DI) at runtime.
- The Repository Implementation handles the connection to the Infrastructure (DB).
- This pattern ensures testability, flexibility, and clear separation of concerns.

## Overall Directory Structure (Mermaid)

```mermaid
flowchart TD
    lib --> common
    lib --> domain
    lib --> generated
    lib --> i18n
    lib --> infrastructure
    lib --> presantation
    lib --> usecase

    common --> constants
    common --> provider
    common --> router
    constants --> route_paths[route_paths.dart]
    provider --> common_provider[common_provider.dart]
    provider --> repository_provider[repository_provider.dart]
    provider --> usecase_provider[usecase_provider.dart]
    router --> app_router[app_router.dart]

    domain --> dify
    domain --> history
    domain --> progress
    domain --> question
    domain --> setting
    dify --> dify_chat_message[dify_chat_message/]
    history --> feedback[feedback/]
    history --> history_sub[history/]
    progress --> entity[entity/]
    progress --> solved_question[solved_question/]
    question --> question_sub[question/]
    question --> section[section/]
    setting --> api_key[api_key/]
    setting --> app_version[app_version/]
    setting --> question_setting[question/]

    generated --> common_gen[common/]
    generated --> domain_gen[domain/]
    generated --> i18n_gen[i18n/]
    generated --> infrastructure_gen[infrastructure/]
    generated --> presantation_gen[presantation/]

    i18n --> en
    i18n --> ja
    en --> historyListStrings_en[historyListStrings_en.i18n.json]
    en --> historyStrings_en[historyStrings_en.i18n.json]
    en --> homeStrings_en[homeStrings_en.i18n.json]
    en --> questionStrings_en[questionStrings_en.i18n.json]
    en --> sectionListStrings_en[sectionListStrings_en.i18n.json]
    en --> sectionStrings_en[sectionStrings_en.i18n.json]
    en --> settingStrings_en[settingStrings_en.i18n.json]
    ja --> historyListStrings_ja[historyListStrings_ja.i18n.json]
    ja --> historyStrings_ja[historyStrings_ja.i18n.json]
    ja --> homeStrings_ja[homeStrings_ja.i18n.json]
    ja --> questionStrings_ja[questionStrings_ja.i18n.json]
    ja --> sectionListStrings_ja[sectionListStrings_ja.i18n.json]
    ja --> sectionStrings_ja[sectionStrings_ja.i18n.json]
    ja --> settingStrings_ja[settingStrings_ja.i18n.json]

    infrastructure --> data
    infrastructure --> repository
    data --> local[local/]
    data --> remote[remote/]
    repository --> dify_repo[dify/]
    repository --> history_repo[history/]
    repository --> progress_repo[progress/]
    repository --> question_repo[question/]
    repository --> setting_repo[setting/]

    presantation --> history
    presantation --> history_list
    presantation --> home
    presantation --> question
    presantation --> section
    presantation --> section_list
    presantation --> setting
    history --> view_history[view/]
    history --> view_model_history[view_model/]
    history_list --> view_history_list[view/]
    history_list --> view_model_history_list[view_model/]
    home --> view_home[view/]
    home --> view_model_home[view_model/]
    question --> view_question[view/]
    question --> view_model_question[view_model/]
    section --> view_section[view/]
    section --> view_model_section[view_model/]
    section_list --> view_section_list[view/]
    section_list --> view_model_section_list[view_model/]
    setting --> view_setting[view/]
    setting --> view_model_setting[view_model/]

    usecase --> dify_uc[dify/]
    usecase --> history_uc[history/]
    usecase --> progress_uc[progress/]
    usecase --> question_uc[question/]
    usecase --> setting_uc[setting/]
    dify_uc --> get_dify_chat_message[get_dify_chat_message.dart]
    history_uc --> add_history_usecase[add_history_usecase.dart]
    history_uc --> get_histories_usecase[get_histories_usecase.dart]
    history_uc --> get_history_usecase[get_history_usecase.dart]
    progress_uc --> check_solved_question[check_solved_question.dart]
    progress_uc --> get_solved_question_count[get_solved_question_count.dart]
    progress_uc --> update_solved_question[update_solved_question.dart]
    question_uc --> get_all_question_count_usecase[get_all_question_count_usecase.dart]
    question_uc --> get_choices_usecase[get_choices_usecase.dart]
    question_uc --> get_question_usecase[get_question_usecase.dart]
    question_uc --> get_questions_usecase[get_questions_usecase.dart]
    question_uc --> get_section_usecase[get_section_usecase.dart]
    question_uc --> get_sections_usecase[get_sections_usecase.dart]
    question_uc --> update_questions_usecase[update_questions_usecase.dart]
    question_uc --> update_sections_usecase[update_sections_usecase.dart]
    setting_uc --> get_api_key_usecase[get_api_key_usecase.dart]
    setting_uc --> get_app_version_usecase[get_app_version_usecase.dart]
    setting_uc --> update_api_key_usecase[update_api_key_usecase.dart]
    setting_uc --> update_questions_usecase[update_questions_usecase.dart]
```

This diagram is generated from the actual directory and file structure under `lib/`, including subdirectories and key files. Each node represents a directory or file, providing a precise and up-to-date overview of the app's architecture.
