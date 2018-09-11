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
    .param p1, "context"    # Landroid/content/Context;

    .line 142
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    .line 128
    const v1, 0x80001

    iput v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mInputType:I

    .line 130
    iput v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionInputType:I

    .line 132
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditInputType:I

    .line 133
    iput v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionEditInputType:I

    .line 134
    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    .line 143
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    .line 144
    const/16 v0, 0x70

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    .line 145
    return-void
.end method

.method private isChecked()Z
    .locals 2

    .line 448
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
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
    .param p1, "flag"    # I
    .param p2, "mask"    # I

    .line 156
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    .line 157
    return-void
.end method


# virtual methods
.method protected final applyValues(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 2
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 165
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setId(J)V

    .line 166
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setLabel1(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setEditTitle(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setLabel2(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setEditDescription(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mIntent:Landroid/content/Intent;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mIntent:Landroid/content/Intent;

    .line 174
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    .line 175
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mInputType:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mInputType:I

    .line 176
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionInputType:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mDescriptionInputType:I

    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mAutofillHints:[Ljava/lang/String;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mAutofillHints:[Ljava/lang/String;

    .line 178
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditInputType:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mEditInputType:I

    .line 179
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionEditInputType:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mDescriptionEditInputType:I

    .line 180
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    .line 181
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    iput v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mCheckSetId:I

    .line 182
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mSubActions:Ljava/util/List;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    .line 183
    return-void
.end method

.method public autoSaveRestoreEnabled(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "autoSaveRestoreEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 543
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const/16 v0, 0x40

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    .line 544
    return-object p0
.end method

.method public varargs autofillHints([Ljava/lang/String;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "hints"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 553
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mAutofillHints:[Ljava/lang/String;

    .line 554
    return-object p0
.end method

.method public checkSetId(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "checkSetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 470
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    .line 471
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    if-nez v0, :cond_0

    .line 474
    return-object p0

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editable actions cannot also be in check sets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checked(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "checked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 455
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    .line 456
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    if-nez v0, :cond_0

    .line 459
    return-object p0

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editable actions cannot also be checked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clickAction(J)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .line 194
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const-wide/16 v0, -0x4

    cmp-long v2, p1, v0

    const v3, 0x104000a

    if-nez v2, :cond_0

    .line 195
    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    .line 196
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 197
    :cond_0
    const-wide/16 v0, -0x5

    cmp-long v2, p1, v0

    const/high16 v4, 0x1040000

    if-nez v2, :cond_1

    .line 198
    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    .line 199
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 200
    :cond_1
    const-wide/16 v0, -0x6

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 201
    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    .line 202
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    sget v1, Landroid/support/v17/leanback/R$string;->lb_guidedaction_finish_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 203
    :cond_2
    const-wide/16 v0, -0x7

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    .line 204
    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    .line 205
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    sget v1, Landroid/support/v17/leanback/R$string;->lb_guidedaction_continue_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 206
    :cond_3
    const-wide/16 v0, -0x8

    cmp-long v2, p1, v0

    if-nez v2, :cond_4

    .line 207
    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    .line 208
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 209
    :cond_4
    const-wide/16 v0, -0x9

    cmp-long v2, p1, v0

    if-nez v2, :cond_5

    .line 210
    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    .line 211
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    .line 213
    :cond_5
    :goto_0
    return-object p0
.end method

.method public description(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1, "descriptionResourceId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 283
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescription:Ljava/lang/CharSequence;

    .line 284
    return-object p0
.end method

.method public description(Ljava/lang/CharSequence;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    .line 273
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescription:Ljava/lang/CharSequence;

    .line 274
    return-object p0
.end method

.method public descriptionEditInputType(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "inputType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 442
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionEditInputType:I

    .line 443
    return-object p0
.end method

.method public descriptionEditable(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "editable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 374
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 375
    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    if-ne v1, v0, :cond_0

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    .line 378
    :cond_0
    return-object p0

    .line 380
    :cond_1
    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    .line 381
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    if-nez v0, :cond_2

    .line 384
    return-object p0

    .line 382
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editable actions cannot also be checked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public descriptionInputType(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "inputType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 421
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionInputType:I

    .line 422
    return-object p0
.end method

.method public editDescription(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1, "descriptionResourceId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 304
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditDescription:Ljava/lang/CharSequence;

    .line 305
    return-object p0
.end method

.method public editDescription(Ljava/lang/CharSequence;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    .line 293
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditDescription:Ljava/lang/CharSequence;

    .line 294
    return-object p0
.end method

.method public editInputType(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "inputType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 432
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditInputType:I

    .line 433
    return-object p0
.end method

.method public editTitle(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1, "editTitleResourceId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 263
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditTitle:Ljava/lang/CharSequence;

    .line 264
    return-object p0
.end method

.method public editTitle(Ljava/lang/CharSequence;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "editTitle"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    .line 252
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditTitle:Ljava/lang/CharSequence;

    .line 253
    return-object p0
.end method

.method public editable(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "editable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 356
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 357
    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    if-ne v1, v0, :cond_0

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    .line 360
    :cond_0
    return-object p0

    .line 362
    :cond_1
    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    .line 363
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    if-nez v0, :cond_2

    .line 366
    return-object p0

    .line 364
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editable actions cannot also be checked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enabled(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 511
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    .line 512
    return-object p0
.end method

.method public focusable(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "focusable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 521
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const/16 v0, 0x20

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    .line 522
    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 152
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hasEditableActivatorView(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "editable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 392
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const/4 v0, 0x3

    if-nez p1, :cond_1

    .line 393
    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    if-ne v1, v0, :cond_0

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    .line 396
    :cond_0
    return-object p0

    .line 398
    :cond_1
    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    .line 399
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    if-nez v0, :cond_2

    .line 402
    return-object p0

    .line 400
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editable actions cannot also be checked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "hasNext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 493
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    .line 494
    return-object p0
.end method

.method public icon(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1, "iconResourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 347
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
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
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TB;"
        }
    .end annotation

    .line 323
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 324
    return-object p0
.end method

.method public iconResourceId(ILandroid/content/Context;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1, "iconResourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    invoke-static {p2, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->icon(Landroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public id(J)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .line 222
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput-wide p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mId:J

    .line 223
    return-object p0
.end method

.method public infoOnly(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "infoOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 502
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    .line 503
    return-object p0
.end method

.method public inputType(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "inputType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 411
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mInputType:I

    .line 412
    return-object p0
.end method

.method public intent(Landroid/content/Intent;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TB;"
        }
    .end annotation

    .line 314
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mIntent:Landroid/content/Intent;

    .line 315
    return-object p0
.end method

.method public multilineDescription(Z)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 2
    .param p1, "multilineDescription"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 483
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->setFlags(II)V

    .line 485
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

    .line 531
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    .local p1, "subActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mSubActions:Ljava/util/List;

    .line 532
    return-object p0
.end method

.method public title(I)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 1
    .param p1, "titleResourceId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 242
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    .line 243
    return-object p0
.end method

.method public title(Ljava/lang/CharSequence;)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    .line 232
    .local p0, "this":Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;, "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase<TB;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    .line 233
    return-object p0
.end method
