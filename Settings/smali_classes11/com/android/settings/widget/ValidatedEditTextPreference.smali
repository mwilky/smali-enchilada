.class public Lcom/android/settings/widget/ValidatedEditTextPreference;
.super Lcom/android/settingslib/CustomEditTextPreference;
.source "ValidatedEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;,
        Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;
    }
.end annotation


# instance fields
.field private mIsPassword:Z

.field private mIsSummaryPassword:Z

.field private final mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

.field private mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    return-object v0
.end method


# virtual methods
.method public isPassword()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v2, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x91

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsSummaryPassword:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    :goto_0
    return-void
.end method

.method public setIsPassword(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    return-void
.end method

.method public setIsSummaryPassword(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsSummaryPassword:Z

    return-void
.end method

.method public setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    return-void
.end method
