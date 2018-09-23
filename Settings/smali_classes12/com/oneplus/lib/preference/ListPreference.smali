.class public Lcom/oneplus/lib/preference/ListPreference;
.super Lcom/oneplus/lib/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->ListPreference_android_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->ListPreference_android_entryValues:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/lib/preference/ListPreference;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/preference/ListPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mClickedDialogEntryIndex:I

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/oneplus/lib/preference/ListPreference$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/preference/ListPreference$1;-><init>(Lcom/oneplus/lib/preference/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/ListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/ListPreference$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/oneplus/lib/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/oneplus/lib/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/oneplus/lib/preference/ListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/lib/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setEntries(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/ListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/preference/ListPreference;->mValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mValueSet:Z

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
