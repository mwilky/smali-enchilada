.class public Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;
.super Landroid/support/v17/leanback/widget/DiffCallback;
.source "GuidedActionDiffCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/widget/DiffCallback<",
        "Landroid/support/v17/leanback/widget/GuidedAction;",
        ">;"
    }
.end annotation


# static fields
.field static final sInstance:Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;->sInstance:Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DiffCallback;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;->sInstance:Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;

    return-object v0
.end method


# virtual methods
.method public areContentsTheSame(Landroid/support/v17/leanback/widget/GuidedAction;Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .locals 4
    .param p1    # Landroid/support/v17/leanback/widget/GuidedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v17/leanback/widget/GuidedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p1, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    iget v3, p2, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getInputType()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getInputType()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditInputType()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditInputType()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionEditInputType()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionEditInputType()I

    move-result v3

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/support/v17/leanback/widget/GuidedAction;

    check-cast p2, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;->areContentsTheSame(Landroid/support/v17/leanback/widget/GuidedAction;Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Landroid/support/v17/leanback/widget/GuidedAction;Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .locals 6
    .param p1    # Landroid/support/v17/leanback/widget/GuidedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v17/leanback/widget/GuidedAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/support/v17/leanback/widget/GuidedAction;

    check-cast p2, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;->areItemsTheSame(Landroid/support/v17/leanback/widget/GuidedAction;Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result p1

    return p1
.end method
