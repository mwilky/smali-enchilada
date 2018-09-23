.class public Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;
.super Landroid/widget/FrameLayout;
.source "OutlineOnlyWithChildrenFrameLayout.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mInnerOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mMagicalOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;)Landroid/view/ViewOutlineProvider;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->mInnerOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->invalidateOutline()V

    return-void
.end method

.method public setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->mInnerOutlineProvider:Landroid/view/ViewOutlineProvider;

    iget-object v0, p0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->mMagicalOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout$1;-><init>(Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;)V

    iput-object v0, p0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->mMagicalOutlineProvider:Landroid/view/ViewOutlineProvider;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->mMagicalOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
