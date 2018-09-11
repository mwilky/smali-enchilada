.class public Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FacetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field mAction:Landroid/support/v17/leanback/widget/GuidedAction;

.field mActivatorView:Landroid/view/View;

.field mCheckmarkView:Landroid/widget/ImageView;

.field mChevronView:Landroid/widget/ImageView;

.field private mContentView:Landroid/view/View;

.field final mDelegate:Landroid/view/View$AccessibilityDelegate;

.field mDescriptionView:Landroid/widget/TextView;

.field mEditingMode:I

.field mIconView:Landroid/widget/ImageView;

.field private final mIsSubAction:Z

.field mPressAnimator:Landroid/animation/Animator;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isSubAction"    # Z

    .line 216
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    .line 189
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 218
    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mContentView:Landroid/view/View;

    .line 219
    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 220
    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_activator_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    .line 221
    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    .line 222
    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 223
    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_checkmark:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    .line 224
    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_chevron:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    .line 225
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mIsSubAction:Z

    .line 227
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 228
    return-void
.end method


# virtual methods
.method public getAction()Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 1

    .line 356
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    return-object v0
.end method

.method public getCheckmarkView()Landroid/widget/ImageView;
    .locals 1

    .line 279
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getChevronView()Landroid/widget/ImageView;
    .locals 1

    .line 286
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getDescriptionView()Landroid/widget/TextView;
    .locals 1

    .line 257
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEditableDescriptionView()Landroid/widget/EditText;
    .locals 1

    .line 265
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEditableTitleView()Landroid/widget/EditText;
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEditingView()Landroid/view/View;
    .locals 1

    .line 331
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    packed-switch v0, :pswitch_data_0

    .line 340
    const/4 v0, 0x0

    return-object v0

    .line 337
    :pswitch_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    return-object v0

    .line 335
    :pswitch_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    return-object v0

    .line 333
    :pswitch_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFacet(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 368
    .local p1, "facetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    if-ne p1, v0, :cond_0

    .line 369
    sget-object v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    return-object v0

    .line 371
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 242
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isInEditing()Z
    .locals 1

    .line 293
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInEditingActivatorView()Z
    .locals 2

    .line 323
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInEditingDescription()Z
    .locals 2

    .line 315
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInEditingText()Z
    .locals 3

    .line 301
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

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

.method public isInEditingTitle()Z
    .locals 2

    .line 308
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSubAction()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mIsSubAction:Z

    return v0
.end method

.method press(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    .line 375
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    .line 379
    :cond_0
    if-eqz p1, :cond_1

    sget v0, Landroid/support/v17/leanback/R$attr;->guidedActionPressedAnimation:I

    goto :goto_0

    :cond_1
    sget v0, Landroid/support/v17/leanback/R$attr;->guidedActionUnpressedAnimation:I

    .line 381
    .local v0, "themeAttrId":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 382
    .local v1, "ctx":Landroid/content/Context;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 383
    .local v2, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    .line 385
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 386
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    new-instance v4, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$2;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 392
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 394
    :cond_2
    return-void
.end method

.method setActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .line 360
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 361
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;->setFocusOutAllowed(Z)V

    .line 364
    :cond_0
    return-void
.end method
