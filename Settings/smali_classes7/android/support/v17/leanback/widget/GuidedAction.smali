.class public Landroid/support/v17/leanback/widget/GuidedAction;
.super Landroid/support/v17/leanback/widget/Action;
.source "GuidedAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedAction$Builder;,
        Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    }
.end annotation


# static fields
.field public static final ACTION_ID_CANCEL:J = -0x5L

.field public static final ACTION_ID_CONTINUE:J = -0x7L

.field public static final ACTION_ID_CURRENT:J = -0x3L

.field public static final ACTION_ID_FINISH:J = -0x6L

.field public static final ACTION_ID_NEXT:J = -0x2L

.field public static final ACTION_ID_NO:J = -0x9L

.field public static final ACTION_ID_OK:J = -0x4L

.field public static final ACTION_ID_YES:J = -0x8L

.field public static final CHECKBOX_CHECK_SET_ID:I = -0x1

.field public static final DEFAULT_CHECK_SET_ID:I = 0x1

.field static final EDITING_ACTIVATOR_VIEW:I = 0x3

.field static final EDITING_DESCRIPTION:I = 0x2

.field static final EDITING_NONE:I = 0x0

.field static final EDITING_TITLE:I = 0x1

.field public static final NO_CHECK_SET:I = 0x0

.field static final PF_AUTORESTORE:I = 0x40

.field static final PF_CHECKED:I = 0x1

.field static final PF_ENABLED:I = 0x10

.field static final PF_FOCUSABLE:I = 0x20

.field static final PF_HAS_NEXT:I = 0x4

.field static final PF_INFO_ONLY:I = 0x8

.field static final PF_MULTI_LINE_DESCRIPTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GuidedAction"


# instance fields
.field mActionFlags:I

.field mAutofillHints:[Ljava/lang/String;

.field mCheckSetId:I

.field mDescriptionEditInputType:I

.field mDescriptionInputType:I

.field private mEditDescription:Ljava/lang/CharSequence;

.field mEditInputType:I

.field private mEditTitle:Ljava/lang/CharSequence;

.field mEditable:I

.field mInputType:I

.field mIntent:Landroid/content/Intent;

.field mSubActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 616
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/Action;-><init>(J)V

    .line 617
    return-void
.end method

.method static isPasswordVariant(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .line 962
    and-int/lit16 v0, p0, 0xff0

    .line 963
    .local v0, "variation":I
    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    const/16 v1, 0x90

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private setFlags(II)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "mask"    # I

    .line 620
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    .line 621
    return-void
.end method


# virtual methods
.method public getAutofillHints()[Ljava/lang/String;
    .locals 1

    .line 854
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSetId()I
    .locals 1

    .line 806
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mCheckSetId:I

    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 688
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionEditInputType()I
    .locals 1

    .line 761
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mDescriptionEditInputType:I

    return v0
.end method

.method public getDescriptionInputType()I
    .locals 1

    .line 777
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mDescriptionInputType:I

    return v0
.end method

.method public getEditDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 662
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEditInputType()I
    .locals 1

    .line 752
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditInputType:I

    return v0
.end method

.method public getEditTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 645
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 769
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mInputType:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 704
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getSubActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation

    .line 889
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 628
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasEditableActivatorView()Z
    .locals 2

    .line 744
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMultilineDescription()Z
    .locals 2

    .line 815
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 863
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubActions()Z
    .locals 1

    .line 896
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTextEditable()Z
    .locals 3

    .line 736
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public infoOnly()Z
    .locals 2

    .line 874
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAutoSaveRestoreEnabled()Z
    .locals 2

    .line 912
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    .line 785
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDescriptionEditable()Z
    .locals 2

    .line 728
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEditTitleUsed()Z
    .locals 1

    .line 680
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEditable()Z
    .locals 2

    .line 720
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnabled()Z
    .locals 2

    .line 823
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocusable()Z
    .locals 2

    .line 839
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final needAutoSaveDescription()Z
    .locals 1

    .line 973
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionEditInputType()I

    move-result v0

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isPasswordVariant(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final needAutoSaveTitle()Z
    .locals 1

    .line 969
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditInputType()I

    move-result v0

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isPasswordVariant(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 946
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->needAutoSaveTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 947
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setTitle(Ljava/lang/CharSequence;)V

    .line 951
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->needAutoSaveDescription()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 952
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "description":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 954
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    .line 956
    .end local v0    # "description":Ljava/lang/String;
    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 957
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    .line 959
    :cond_4
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 926
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->needAutoSaveTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 928
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->needAutoSaveDescription()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 929
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 931
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 933
    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 793
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setFlags(II)V

    .line 794
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 696
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedAction;->setLabel2(Ljava/lang/CharSequence;)V

    .line 697
    return-void
.end method

.method public setEditDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "editDescription"    # Ljava/lang/CharSequence;

    .line 671
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditDescription:Ljava/lang/CharSequence;

    .line 672
    return-void
.end method

.method public setEditTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "editTitle"    # Ljava/lang/CharSequence;

    .line 653
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditTitle:Ljava/lang/CharSequence;

    .line 654
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 831
    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setFlags(II)V

    .line 832
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .line 847
    const/16 v0, 0x20

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setFlags(II)V

    .line 848
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 712
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mIntent:Landroid/content/Intent;

    .line 713
    return-void
.end method

.method public setSubActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    .line 882
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    .line 883
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 636
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedAction;->setLabel1(Ljava/lang/CharSequence;)V

    .line 637
    return-void
.end method
