.class public abstract Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
.super Ljava/lang/Object;
.source "GuidedAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActionFlags:I

.field private mAutofillHints:[Ljava/lang/String;

.field private mCheckSetId:I

.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/CharSequence;

.field private mDescriptionEditInputType:I

.field private mDescriptionInputType:I

.field private mEditDescription:Ljava/lang/CharSequence;

.field private mEditInputType:I

.field private mEditTitle:Ljava/lang/CharSequence;

.field private mEditable:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:J

.field private mInputType:I

.field private mIntent:Landroid/content/Intent;

.field private mSubActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    const v1, 0x80001

    iput v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mInputType:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionInputType:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditInputType:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionEditInputType:I

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    const/16 v0, 0x70

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    return-void
.end method

.method private isChecked()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setFlags(II)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    return-void
.end method


# virtual methods
.method protected final applyValues(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setId(J)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setLabel1(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setEditTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setLabel2(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setEditDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mIntent:Landroid/content/Intent;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mIntent:Landroid/content/Intent;

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mInputType:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mInputType:I

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionInputType:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mDescriptionInputType:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mAutofillHints:[Ljava/lang/String;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mAutofillHints:[Ljava/lang/String;

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditInputType:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mEditInputType:I

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionEditInputType:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mDescriptionEditInputType:I

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mCheckSetId:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mSubActions:Ljava/util/List;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    return-void
.end method

.method public autoSaveRestoreEnabled(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    const/16 v0, 0x40

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    return-object p0
.end method

.method public varargs autofillHints([Ljava/lang/String;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mAutofillHints:[Ljava/lang/String;

    return-object p0
.end method

.method public checkSetId(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editable actions cannot also be in check sets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checked(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editable actions cannot also be checked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clickAction(J)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    const-wide/16 v0, -0x4

    cmp-long v2, p1, v0

    const v3, 0x104000a

    if-nez v2, :cond_0

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x5

    cmp-long v2, p1, v0

    const/high16 v4, 0x1040000

    if-nez v2, :cond_1

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x6

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    sget v1, Landroid/support/v17/leanback/R$string;->lb_guidedaction_finish_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x7

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    sget v1, Landroid/support/v17/leanback/R$string;->lb_guidedaction_continue_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    const-wide/16 v0, -0x8

    cmp-long v2, p1, v0

    if-nez v2, :cond_4

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    const-wide/16 v0, -0x9

    cmp-long v2, p1, v0

    if-nez v2, :cond_5

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    :cond_5
    :goto_0
    return-object p0
.end method

.method public description(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public description(Ljava/lang/CharSequence;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public descriptionEditInputType(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionEditInputType:I

    return-object p0
.end method

.method public descriptionEditable(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    const/4 v0, 0x2

    if-nez p1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    :cond_0
    return-object p0

    :cond_1
    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editable actions cannot also be checked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public descriptionInputType(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionInputType:I

    return-object p0
.end method

.method public editDescription(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public editDescription(Ljava/lang/CharSequence;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public editInputType(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditInputType:I

    return-object p0
.end method

.method public editTitle(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public editTitle(Ljava/lang/CharSequence;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public editable(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    :cond_0
    return-object p0

    :cond_1
    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editable actions cannot also be checked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enabled(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    return-object p0
.end method

.method public focusable(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    const/16 v0, 0x20

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hasEditableActivatorView(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    const/4 v0, 0x3

    if-nez p1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    :cond_0
    return-object p0

    :cond_1
    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editable actions cannot also be checked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    return-object p0
.end method

.method public icon(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->icon(Landroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public iconResourceId(ILandroid/content/Context;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->icon(Landroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public id(J)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    return-object p0
.end method

.method public infoOnly(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    return-object p0
.end method

.method public inputType(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mInputType:I

    return-object p0
.end method

.method public intent(Landroid/content/Intent;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public multilineDescription(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    return-object p0
.end method

.method public subActions(Ljava/util/List;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)TB;"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mSubActions:Ljava/util/List;

    return-object p0
.end method

.method public title(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public title(Ljava/lang/CharSequence;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
