.class public Landroid/support/v17/leanback/widget/GuidedActionsStylist;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FragmentAnimationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GuidedActionsStylist"

.field public static final VIEW_TYPE_DATE_PICKER:I = 0x1

.field public static final VIEW_TYPE_DEFAULT:I

.field static final sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;


# instance fields
.field private mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

.field private mBackToCollapseActivatorView:Z

.field private mBackToCollapseSubActions:Z

.field private mBgView:Landroid/view/View;

.field private mButtonActions:Z

.field private mContentView:Landroid/view/View;

.field private mDescriptionMinLines:I

.field private mDisabledChevronAlpha:F

.field private mDisabledDescriptionAlpha:F

.field private mDisabledTextAlpha:F

.field private mDisplayHeight:I

.field private mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

.field private mEnabledChevronAlpha:F

.field private mEnabledDescriptionAlpha:F

.field private mEnabledTextAlpha:F

.field mExpandTransition:Ljava/lang/Object;

.field private mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

.field private mKeyLinePercent:F

.field mMainView:Landroid/view/ViewGroup;

.field private mSubActionsBackground:Landroid/view/View;

.field mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

.field private mTitleMaxLines:I

.field private mTitleMinLines:I

.field private mVerticalPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 160
    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    .line 161
    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 162
    .local v0, "alignedDef":Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_item_title:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setAlignedToTextViewBaseline(Z)V

    .line 164
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetWithPadding(Z)V

    .line 166
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 167
    sget-object v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    new-array v1, v1, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    .line 168
    .end local v0    # "alignedDef":Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    .line 425
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    .line 142
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    return-object v0
.end method

.method private getDescriptionMaxHeight(Landroid/content/Context;Landroid/widget/TextView;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Landroid/widget/TextView;

    .line 1543
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisplayHeight:I

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mVerticalPadding:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    mul-int/2addr v2, v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    return v0
.end method

.method private getDimension(Landroid/content/Context;Landroid/util/TypedValue;I)I
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "typedValue"    # Landroid/util/TypedValue;
    .param p3, "attrId"    # I

    .line 1515
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1516
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "typedValue"    # Landroid/util/TypedValue;
    .param p3, "attrId"    # I

    .line 1504
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1506
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "typedValue"    # Landroid/util/TypedValue;
    .param p3, "attrId"    # I

    .line 1510
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1511
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private setIcon(Landroid/widget/ImageView;Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .locals 3
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1520
    const/4 v0, 0x0

    .line 1521
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1522
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1523
    if-eqz v0, :cond_0

    .line 1525
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1526
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1527
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1529
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1532
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method private static setMaxLines(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "maxLines"    # I

    .line 786
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 787
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 789
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 790
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 792
    :goto_0
    return-void
.end method

.method private setupNextImeOptions(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "edit"    # Landroid/widget/EditText;

    .line 806
    if-eqz p1, :cond_0

    .line 807
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 809
    :cond_0
    return-void
.end method

.method private updateChevronAndVisibility(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 4
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1452
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isSubAction()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1453
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1454
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1456
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1457
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->setActivated(Z)V

    goto :goto_0

    .line 1459
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-ne v0, v3, :cond_2

    .line 1460
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getKeyLine()I

    move-result v1

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 1463
    :cond_1
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1464
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1465
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->setActivated(Z)V

    goto :goto_0

    .line 1468
    :cond_2
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1469
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1472
    :cond_3
    :goto_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1473
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindChevronView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 1475
    :cond_4
    return-void
.end method


# virtual methods
.method public collapseAction(Z)V
    .locals 4
    .param p1, "withTransition"    # Z

    .line 1237
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1240
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1241
    .local v0, "runTransition":Z
    :goto_0
    nop

    .line 1242
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v2

    .line 1243
    .local v2, "actionPosition":I
    if-gez v2, :cond_2

    .line 1244
    return-void

    .line 1246
    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1247
    nop

    .line 1248
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1247
    invoke-virtual {p0, v3, v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    goto :goto_1

    .line 1252
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 1254
    :goto_1
    return-void

    .line 1238
    .end local v0    # "runTransition":Z
    .end local v2    # "actionPosition":I
    :cond_4
    :goto_2
    return-void
.end method

.method public expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .locals 5
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;
    .param p2, "withTransition"    # Z

    .line 1187
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1190
    :cond_0
    nop

    .line 1191
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v0

    .line 1192
    .local v0, "actionPosition":I
    if-gez v0, :cond_1

    .line 1193
    return-void

    .line 1195
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1196
    .local v1, "runTransition":Z
    :goto_0
    if-nez v1, :cond_3

    .line 1197
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    new-instance v4, Landroid/support/v17/leanback/widget/GuidedActionsStylist$4;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$4;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {v3, v0, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    .line 1210
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1211
    invoke-virtual {p0, p1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateSubActionsGridView(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    goto :goto_1

    .line 1214
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    new-instance v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$5;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$5;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {v2, v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    .line 1229
    :cond_4
    :goto_1
    return-void

    .line 1188
    .end local v0    # "actionPosition":I
    .end local v1    # "runTransition":Z
    :cond_5
    :goto_2
    return-void
.end method

.method public getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 554
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public getExpandedAction()Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 1

    .line 1384
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    return-object v0
.end method

.method public getItemViewType(Landroid/support/v17/leanback/widget/GuidedAction;)I
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 588
    instance-of v0, p1, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x1

    return v0

    .line 591
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getKeyLine()I
    .locals 2

    .line 1257
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mKeyLinePercent:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 562
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public final isBackKeyToCollapseActivatorView()Z
    .locals 1

    .line 1177
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return v0
.end method

.method public final isBackKeyToCollapseSubActions()Z
    .locals 1

    .line 1155
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    return v0
.end method

.method public isButtonActions()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    return v0
.end method

.method public isExpandTransitionSupported()Z
    .locals 2

    .line 1120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 1377
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInExpandTransition()Z
    .locals 1

    .line 1110
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubActionsExpanded()Z
    .locals 1

    .line 1370
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "checked"    # Z

    .line 943
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 946
    :cond_0
    return-void
.end method

.method public onAnimateItemFocused(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 0
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "focused"    # Z

    .line 913
    return-void
.end method

.method public onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 0
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "pressed"    # Z

    .line 922
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->press(Z)V

    .line 923
    return-void
.end method

.method public onAnimateItemPressedCancelled(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 930
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->press(Z)V

    .line 931
    return-void
.end method

.method public onBindActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 7
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 991
    instance-of v0, p2, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    if-eqz v0, :cond_2

    .line 992
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    .line 993
    .local v0, "dateAction":Landroid/support/v17/leanback/widget/GuidedDatePickerAction;
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    check-cast v1, Landroid/support/v17/leanback/widget/picker/DatePicker;

    .line 994
    .local v1, "dateView":Landroid/support/v17/leanback/widget/picker/DatePicker;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDatePickerFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMinDate()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 996
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMinDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setMinDate(J)V

    .line 998
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMaxDate()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 999
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMaxDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setMaxDate(J)V

    .line 1001
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1002
    .local v2, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1003
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 1004
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    .line 1003
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateDate(IIIZ)V

    .line 1006
    .end local v0    # "dateAction":Landroid/support/v17/leanback/widget/GuidedDatePickerAction;
    .end local v1    # "dateView":Landroid/support/v17/leanback/widget/picker/DatePicker;
    .end local v2    # "c":Ljava/util/Calendar;
    :cond_2
    return-void
.end method

.method public onBindCheckMarkView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 6
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 964
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 965
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 966
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x101021a

    goto :goto_0

    :cond_0
    const v0, 0x1010219

    .line 969
    .local v0, "attrId":I
    :goto_0
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 970
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 971
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 972
    .local v3, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 973
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 975
    :cond_1
    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    instance-of v4, v4, Landroid/widget/Checkable;

    if-eqz v4, :cond_2

    .line 977
    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/Checkable;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 979
    .end local v0    # "attrId":I
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "typedValue":Landroid/util/TypedValue;
    :cond_2
    goto :goto_1

    .line 980
    :cond_3
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 982
    :goto_1
    return-void
.end method

.method public onBindChevronView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 4
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1072
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasNext()Z

    move-result v0

    .line 1073
    .local v0, "hasNext":Z
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v1

    .line 1074
    .local v1, "hasSubActions":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1088
    :cond_0
    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1075
    :cond_1
    :goto_0
    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1076
    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledChevronAlpha:F

    goto :goto_1

    :cond_2
    iget v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledChevronAlpha:F

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1078
    if-eqz v0, :cond_4

    .line 1079
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    .line 1080
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 1081
    .local v2, "r":F
    :goto_2
    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1082
    .end local v2    # "r":F
    goto :goto_3

    :cond_4
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-ne p2, v2, :cond_5

    .line 1083
    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    .line 1085
    :cond_5
    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1091
    :goto_3
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 6
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 681
    iput-object p2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    .line 682
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 683
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getInputType()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 684
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledTextAlpha:F

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledTextAlpha:F

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 686
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 687
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 688
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 689
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getAutofillHints()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_1

    .line 693
    :cond_1
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    move-object v5, v3

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_1

    .line 695
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    .line 697
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    .line 700
    :cond_3
    :goto_1
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 701
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionInputType()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 702
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x8

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledDescriptionAlpha:F

    goto :goto_3

    :cond_5
    iget v5, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledDescriptionAlpha:F

    :goto_3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 707
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 708
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 709
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 710
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 711
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 712
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getAutofillHints()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_4

    .line 714
    :cond_6
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_4

    .line 716
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_8

    .line 718
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    .line 722
    :cond_8
    :goto_4
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 723
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindCheckMarkView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 725
    :cond_9
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setIcon(Landroid/widget/ImageView;Landroid/support/v17/leanback/widget/GuidedAction;)Z

    .line 727
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasMultilineDescription()Z

    move-result v0

    const/high16 v1, 0x20000

    if-eqz v0, :cond_a

    .line 728
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 729
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 730
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 731
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    or-int/2addr v2, v1

    .line 730
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 732
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 733
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    or-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 735
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    .line 736
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 735
    invoke-direct {p0, v2, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getDescriptionMaxHeight(Landroid/content/Context;Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_5

    .line 740
    :cond_a
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 741
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMinLines:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 743
    :cond_b
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 744
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDescriptionMinLines:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 747
    :cond_c
    :goto_5
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 748
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 750
    :cond_d
    invoke-virtual {p0, p1, v4, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 751
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 752
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 753
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_6

    .line 755
    :cond_e
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 756
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 758
    :goto_6
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setupImeOptions(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 760
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->updateChevronAndVisibility(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    .line 761
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .line 441
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 443
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme_guidedStepKeyline:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 445
    .local v1, "keylinePercent":F
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    .line 446
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz v4, :cond_0

    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_content2:I

    goto :goto_0

    :cond_0
    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_content:I

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    .line 448
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz v4, :cond_1

    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_list_background2:I

    goto :goto_1

    :cond_1
    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_list_background:I

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBgView:Landroid/view/View;

    .line 450
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v2, :cond_2

    .line 451
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    goto :goto_3

    .line 453
    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz v4, :cond_3

    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_list2:I

    goto :goto_2

    :cond_3
    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_list:I

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 455
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v2, :cond_6

    .line 458
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 459
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 460
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-nez v2, :cond_4

    .line 461
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 463
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    .line 467
    :cond_4
    :goto_3
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    .line 468
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusableInTouchMode(Z)V

    .line 471
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 472
    .local v2, "ctx":Landroid/content/Context;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 473
    .local v3, "val":Landroid/util/TypedValue;
    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionEnabledChevronAlpha:I

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledChevronAlpha:F

    .line 474
    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionDisabledChevronAlpha:I

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledChevronAlpha:F

    .line 475
    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionTitleMinLines:I

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMinLines:I

    .line 476
    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionTitleMaxLines:I

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    .line 477
    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionDescriptionMinLines:I

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDescriptionMinLines:I

    .line 478
    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionVerticalPadding:I

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getDimension(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mVerticalPadding:I

    .line 479
    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 480
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisplayHeight:I

    .line 482
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_unselected_text_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledTextAlpha:F

    .line 484
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_disabled_text_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledTextAlpha:F

    .line 486
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_unselected_description_text_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledDescriptionAlpha:F

    .line 488
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_disabled_description_text_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledDescriptionAlpha:F

    .line 491
    invoke-static {v2}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getKeyLinePercent(Landroid/content/Context;)F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mKeyLinePercent:F

    .line 492
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    instance-of v4, v4, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;

    if-eqz v4, :cond_5

    .line 493
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    check-cast v4, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;

    new-instance v5, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;

    invoke-direct {v5, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->setInterceptKeyEventListener(Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;)V

    .line 513
    :cond_5
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    return-object v4

    .line 456
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v3    # "val":Landroid/util/TypedValue;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No ListView exists."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 650
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 651
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 652
    .local v1, "v":Landroid/view/View;
    new-instance v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-ne p1, v4, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-direct {v3, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-object v3
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 666
    if-nez p2, :cond_0

    .line 667
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    return-object v0

    .line 669
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 670
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 671
    .local v1, "v":Landroid/view/View;
    new-instance v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-ne p1, v4, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    invoke-direct {v3, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-object v3
.end method

.method public onDestroyView()V
    .locals 1

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    .line 540
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    .line 541
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 542
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 543
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    .line 544
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    .line 545
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBgView:Landroid/view/View;

    .line 546
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    .line 547
    return-void
.end method

.method onEditActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 3
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "editing"    # Z
    .param p3, "withTransition"    # Z

    .line 1037
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1038
    invoke-virtual {p0, p1, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 1039
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1040
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1041
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    new-instance v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1051
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    if-eqz v1, :cond_1

    .line 1053
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J

    .line 1056
    :cond_1
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1057
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1058
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 1059
    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1062
    :goto_0
    return-void
.end method

.method protected onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .locals 0
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;
    .param p3, "editing"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 837
    return-void
.end method

.method protected onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 10
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "editing"    # Z
    .param p3, "withTransition"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 849
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    .line 850
    .local v0, "action":Landroid/support/v17/leanback/widget/GuidedAction;
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 851
    .local v1, "titleView":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v2

    .line 852
    .local v2, "descriptionView":Landroid/widget/TextView;
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p2, :cond_7

    .line 853
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v7

    .line 854
    .local v7, "editTitle":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 855
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v8

    .line 858
    .local v8, "editDescription":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    if-eqz v8, :cond_1

    .line 859
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 862
    if-eqz v2, :cond_2

    .line 863
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionEditInputType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 866
    :cond_2
    iput v5, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_0

    .line 867
    :cond_3
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isEditable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 868
    if-eqz v1, :cond_4

    .line 869
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditInputType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 871
    :cond_4
    iput v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_0

    .line 872
    :cond_5
    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 873
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 874
    iput v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    .line 876
    .end local v7    # "editTitle":Ljava/lang/CharSequence;
    .end local v8    # "editDescription":Ljava/lang/CharSequence;
    :cond_6
    :goto_0
    goto :goto_3

    .line 877
    :cond_7
    if-eqz v1, :cond_8

    .line 878
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    :cond_8
    if-eqz v2, :cond_9

    .line 881
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    :cond_9
    iget v7, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v7, v5, :cond_b

    .line 884
    if-eqz v2, :cond_d

    .line 885
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x8

    goto :goto_1

    :cond_a
    move v3, v6

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionInputType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_2

    .line 889
    :cond_b
    iget v5, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v5, v4, :cond_c

    .line 890
    if-eqz v1, :cond_d

    .line 891
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getInputType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_2

    .line 893
    :cond_c
    iget v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v4, v3, :cond_d

    .line 894
    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v3, :cond_d

    .line 895
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 898
    :cond_d
    :goto_2
    iput v6, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    .line 901
    :goto_3
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    .line 902
    return-void
.end method

.method public onImeAppearing(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1488
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    return-void
.end method

.method public onImeDisappearing(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1495
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    return-void
.end method

.method public onProvideItemLayoutId()I
    .locals 1

    .line 609
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedactions_item:I

    return v0
.end method

.method public onProvideItemLayoutId(I)I
    .locals 3
    .param p1, "viewType"    # I

    .line 629
    if-nez p1, :cond_0

    .line 630
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId()I

    move-result v0

    return v0

    .line 631
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 632
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedactions_datepicker_item:I

    return v0

    .line 634
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not supported in GuidedActionsStylist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProvideLayoutId()I
    .locals 1

    .line 578
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedbuttonactions:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedactions:I

    :goto_0
    return v0
.end method

.method public onUpdateActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .locals 6
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1016
    instance-of v0, p2, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    if-eqz v0, :cond_0

    .line 1017
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    .line 1018
    .local v0, "dateAction":Landroid/support/v17/leanback/widget/GuidedDatePickerAction;
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    check-cast v1, Landroid/support/v17/leanback/widget/picker/DatePicker;

    .line 1019
    .local v1, "dateView":Landroid/support/v17/leanback/widget/picker/DatePicker;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1020
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->setDate(J)V

    .line 1021
    const/4 v2, 0x1

    return v2

    .line 1024
    .end local v0    # "dateAction":Landroid/support/v17/leanback/widget/GuidedDatePickerAction;
    .end local v1    # "dateView":Landroid/support/v17/leanback/widget/picker/DatePicker;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateExpandedViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 4
    .param p1, "avh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1401
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1402
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1403
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    goto :goto_0

    .line 1404
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eq v1, v2, :cond_1

    .line 1405
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1406
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    .line 1410
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 1411
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    .line 1412
    .local v1, "count":I
    nop

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1413
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 1414
    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1415
    .local v2, "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->updateChevronAndVisibility(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    .line 1412
    .end local v2    # "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1417
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method onUpdateSubActionsGridView(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .locals 5
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;
    .param p2, "expand"    # Z

    .line 1420
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_1

    .line 1421
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 1422
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1423
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 1424
    .local v1, "adapter":Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1427
    const/4 v3, -0x2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1428
    const/4 v3, -0x1

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1429
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1430
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setVisibility(I)V

    .line 1431
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 1433
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getSubActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    goto :goto_0

    .line 1437
    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 1438
    invoke-virtual {v3, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v3

    .line 1439
    .local v3, "actionPosition":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    .line 1440
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1441
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1442
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setVisibility(I)V

    .line 1443
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1445
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    .line 1446
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 1449
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "adapter":Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    .end local v3    # "actionPosition":I
    :cond_1
    :goto_0
    return-void
.end method

.method public openInEditMode(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 4
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 767
    nop

    .line 768
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 769
    .local v0, "guidedActionAdapter":Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 770
    .local v1, "actionIndex":I
    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->isEditable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    new-instance v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$2;

    invoke-direct {v3, p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$2;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    invoke-virtual {v2, v1, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    .line 781
    return-void

    .line 771
    :cond_1
    :goto_0
    return-void
.end method

.method public setAsButtonActions()V
    .locals 2

    .line 520
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    .line 525
    return-void

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAsButtonActions() must be called before creating views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setBackKeyToCollapseActivatorView(Z)V
    .locals 0
    .param p1, "backToCollapse"    # Z

    .line 1167
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    .line 1168
    return-void
.end method

.method public final setBackKeyToCollapseSubActions(Z)V
    .locals 0
    .param p1, "backToCollapse"    # Z

    .line 1144
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    .line 1145
    return-void
.end method

.method public setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1033
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    .line 1034
    return-void
.end method

.method public setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;
    .param p3, "editing"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 817
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditing()Z

    move-result v0

    if-eq p3, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    .line 820
    :cond_0
    return-void
.end method

.method setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "editing"    # Z

    .line 823
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 824
    return-void
.end method

.method setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "editing"    # Z
    .param p3, "withTransition"    # Z

    .line 827
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditing()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 830
    :cond_0
    return-void
.end method

.method public setExpandedViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 2
    .param p1, "avh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1102
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    .line 1103
    return-void
.end method

.method protected setupImeOptions(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 801
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableTitleView()Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setupNextImeOptions(Landroid/widget/EditText;)V

    .line 802
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableDescriptionView()Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setupNextImeOptions(Landroid/widget/EditText;)V

    .line 803
    return-void
.end method

.method startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 19
    .param p1, "avh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .param p2, "withTransition"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1265
    const/4 v2, 0x0

    .line 1266
    .local v2, "focusAvh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v3

    .line 1267
    .local v3, "count":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 1268
    iget-object v6, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v7, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 1269
    invoke-virtual {v7, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    check-cast v6, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1270
    .local v6, "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    if-nez v1, :cond_0

    iget-object v7, v6, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 1272
    move-object v2, v6

    .line 1273
    goto :goto_1

    .line 1274
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 1276
    move-object v2, v6

    .line 1277
    goto :goto_1

    .line 1267
    .end local v6    # "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1280
    .end local v5    # "i":I
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1282
    return-void

    .line 1284
    :cond_3
    if-eqz v1, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    move v6, v4

    .line 1285
    .local v6, "isExpand":Z
    :goto_2
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v7

    .line 1286
    .local v7, "isSubActionTransition":Z
    if-eqz p2, :cond_c

    .line 1287
    invoke-static {v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v9

    .line 1288
    .local v9, "set":Ljava/lang/Object;
    if-eqz v7, :cond_5

    iget-object v10, v2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    goto :goto_3

    :cond_5
    iget-object v10, v2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    .line 1289
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    .line 1290
    .local v10, "slideDistance":F
    :goto_3
    const/16 v11, 0x70

    invoke-static {v11, v10}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(IF)Ljava/lang/Object;

    move-result-object v11

    .line 1293
    .local v11, "slideAndFade":Ljava/lang/Object;
    new-instance v12, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;

    invoke-direct {v12, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-static {v11, v12}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V

    .line 1303
    invoke-static {}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeTransform()Ljava/lang/Object;

    move-result-object v12

    .line 1304
    .local v12, "changeFocusItemTransform":Ljava/lang/Object;
    invoke-static {v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v13

    .line 1305
    .local v13, "changeFocusItemBounds":Ljava/lang/Object;
    const/4 v14, 0x3

    invoke-static {v14}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v14

    .line 1307
    .local v14, "fade":Ljava/lang/Object;
    invoke-static {v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v15

    .line 1308
    .local v15, "changeGridBounds":Ljava/lang/Object;
    if-nez v1, :cond_6

    .line 1309
    const-wide/16 v4, 0x96

    invoke-static {v11, v4, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1310
    const-wide/16 v4, 0x64

    invoke-static {v12, v4, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1311
    invoke-static {v13, v4, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1312
    invoke-static {v15, v4, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    goto :goto_4

    .line 1314
    :cond_6
    const-wide/16 v4, 0x64

    invoke-static {v14, v4, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1315
    const-wide/16 v4, 0x32

    invoke-static {v15, v4, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1316
    invoke-static {v12, v4, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1317
    invoke-static {v13, v4, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1319
    :goto_4
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_5
    move/from16 v4, v16

    .end local v16    # "i":I
    .local v4, "i":I
    if-ge v4, v3, :cond_9

    .line 1320
    iget-object v5, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    move/from16 v17, v3

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 1321
    .end local v3    # "count":I
    .local v17, "count":I
    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1322
    .local v3, "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    if-ne v3, v2, :cond_8

    .line 1324
    if-eqz v7, :cond_7

    .line 1325
    iget-object v5, v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v12, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1326
    iget-object v5, v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v13, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1319
    .end local v3    # "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    :cond_7
    const/4 v3, 0x1

    goto :goto_6

    .line 1330
    .restart local v3    # "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    :cond_8
    iget-object v5, v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v11, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1331
    iget-object v5, v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v3

    const/4 v3, 0x1

    invoke-static {v14, v5, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1319
    .end local v3    # "vh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    :goto_6
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "i":I
    .restart local v16    # "i":I
    move/from16 v3, v17

    goto :goto_5

    .line 1334
    .end local v16    # "i":I
    .end local v17    # "count":I
    .local v3, "count":I
    :cond_9
    move/from16 v17, v3

    .end local v3    # "count":I
    .restart local v17    # "count":I
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-static {v15, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1335
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-static {v15, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1336
    invoke-static {v9, v11}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1339
    if-eqz v7, :cond_a

    .line 1340
    invoke-static {v9, v12}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1341
    invoke-static {v9, v13}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1343
    :cond_a
    invoke-static {v9, v14}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1344
    invoke-static {v9, v15}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1345
    iput-object v9, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    .line 1346
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    new-instance v4, Landroid/support/v17/leanback/widget/GuidedActionsStylist$7;

    invoke-direct {v4, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$7;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-static {v3, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    .line 1352
    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    .line 1354
    iget-object v3, v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1355
    .local v3, "startY":I
    iget-object v4, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v5, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->offsetTopAndBottom(I)V

    .line 1356
    iget-object v4, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    iget-object v5, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1358
    .end local v3    # "startY":I
    :cond_b
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .end local v9    # "set":Ljava/lang/Object;
    .end local v10    # "slideDistance":F
    .end local v11    # "slideAndFade":Ljava/lang/Object;
    .end local v12    # "changeFocusItemTransform":Ljava/lang/Object;
    .end local v13    # "changeFocusItemBounds":Ljava/lang/Object;
    .end local v14    # "fade":Ljava/lang/Object;
    .end local v15    # "changeGridBounds":Ljava/lang/Object;
    goto :goto_7

    .line 1360
    .end local v17    # "count":I
    .local v3, "count":I
    :cond_c
    move/from16 v17, v3

    .end local v3    # "count":I
    .restart local v17    # "count":I
    :goto_7
    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateExpandedViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    .line 1361
    if-eqz v7, :cond_d

    .line 1362
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateSubActionsGridView(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    .line 1364
    :cond_d
    return-void
.end method

.method public startExpandedTransition(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 2
    .param p1, "avh"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1132
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    .line 1133
    return-void
.end method
