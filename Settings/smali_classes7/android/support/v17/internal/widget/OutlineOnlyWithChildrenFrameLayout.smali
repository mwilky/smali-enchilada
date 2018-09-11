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
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;)Landroid/view/ViewOutlineProvider;
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;

    .line 39
    iget-object v0, p0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->mInnerOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 64
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 65
    invoke-virtual {p0}, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->invalidateOutline()V

    .line 66
    return-void
.end method

.method public setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 1
    .param p1, "provider"    # Landroid/view/ViewOutlineProvider;

    .line 70
    iput-object p1, p0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->mInnerOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 71
    iget-object v0, p0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->mMagicalOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout$1;-><init>(Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;)V

    iput-object v0, p0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->mMagicalOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/support/v17/internal/widget/OutlineOnlyWithChildrenFrameLayout;->mMagicalOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 86
    return-void
.end method
