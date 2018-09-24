.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mOkButton:Landroid/view/View;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method private performNumberClick(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1

    const v0, 0x7f110353

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const v0, 0x7f110354

    return v0

    :pswitch_1
    const v0, 0x7f11034a

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const v0, 0x7f11034d

    return v0

    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPin;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setUserActivityListener(Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoCheckPinEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const v1, 0x7f0a01c1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    const v1, 0x7f0a00f2

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10401c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$5;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextViewForPin;->setTextChangeListener(Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;)V

    const v1, 0x7f0a01b7

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    const v1, 0x7f0a01b8

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    const v1, 0x7f0a01b9

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    const v1, 0x7f0a01ba

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    const v1, 0x7f0a01bb

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    const v1, 0x7f0a01bc

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    const v1, 0x7f0a01bd

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    const v1, 0x7f0a01be

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    const v1, 0x7f0a01bf

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    const v1, 0x7f0a01c0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus()Z

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    return v1

    :cond_0
    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    return v1

    :cond_1
    const/4 v0, 0x7

    if-lt p1, v0, :cond_2

    const/16 v0, 0x10

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x7

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performNumberClick(I)V

    return v1

    :cond_2
    const/16 v0, 0x90

    if-lt p1, v0, :cond_3

    const/16 v0, 0x99

    if-gt p1, v0, :cond_3

    add-int/lit16 v0, p1, -0x90

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performNumberClick(I)V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus()Z

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin;->reset(ZZ)V

    return-void
.end method

.method protected resetState()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    return-void
.end method
