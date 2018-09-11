.class public Lcom/android/settings/localepicker/OPLocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "OPLocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
.implements Lcom/android/settings/DialogCreatable;


# static fields
.field private static final DLG_SHOW_GLOBAL_WARNING:I = 0x1

.field private static final SAVE_TARGET_LOCALE:Ljava/lang/String; = "locale"

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 55
    invoke-virtual {p0, p0}, Lcom/android/settings/localepicker/OPLocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/localepicker/OPLocalePicker;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/localepicker/OPLocalePicker;

    .line 41
    iget-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 61
    if-eqz p1, :cond_0

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/Locale;

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 64
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/OPLocalePicker;->setHasOptionsMenu(Z)V

    .line 65
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/localepicker/OPLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/localepicker/OPLocalePicker$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/localepicker/OPLocalePicker$1;-><init>(Lcom/android/settings/localepicker/OPLocalePicker;I)V

    const v2, 0x7f120df8

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/LocalePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 72
    .local v1, "list":Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/android/settings/Utils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 73
    return-object v0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/localepicker/OPLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 84
    const-string v0, "en-US"

    invoke-static {p1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 85
    new-array v0, v2, [Ljava/util/Locale;

    .line 86
    .local v0, "newList":[Ljava/util/Locale;
    aput-object p1, v0, v1

    goto :goto_0

    .line 88
    .end local v0    # "newList":[Ljava/util/Locale;
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Locale;

    .line 89
    .restart local v0    # "newList":[Ljava/util/Locale;
    aput-object p1, v0, v1

    .line 90
    const-string v1, "en-US"

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    aput-object v1, v0, v2

    .line 92
    :goto_0
    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 93
    .local v1, "localeList":Landroid/os/LocaleList;
    invoke-static {v1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 94
    invoke-static {v1}, Lcom/android/settings/localepicker/OPLocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 95
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .line 130
    iget-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 134
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .line 107
    iget-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "LocalePicker"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 111
    iget-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/OPLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 112
    return-void
.end method
