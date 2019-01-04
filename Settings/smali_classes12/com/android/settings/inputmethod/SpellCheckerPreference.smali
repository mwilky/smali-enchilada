.class Lcom/android/settings/inputmethod/SpellCheckerPreference;
.super Lcom/android/settings/CustomListPreference;
.source "SpellCheckerPreference.java"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mScis:[Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    const v0, 0x7f0d0212

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setWidgetLayoutResource(I)V

    array-length v0, p2

    new-array v0, v0, [Ljava/lang/CharSequence;

    array-length v1, p2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    aget-object v3, p2, v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->onSettingsButtonClicked()V

    return-void
.end method

.method private onSettingsButtonClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object p1, v0

    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a04d7

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/settings/inputmethod/SpellCheckerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const v0, 0x7f1203c9

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setSelected(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setValueIndex(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->setValue(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    iput-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-void
.end method
