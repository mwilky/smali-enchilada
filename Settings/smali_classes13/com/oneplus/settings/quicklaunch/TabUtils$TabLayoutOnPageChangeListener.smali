.class public Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabUtils.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quicklaunch/TabUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private mPendingSelection:I

.field private mScrollState:I

.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/lib/widget/OPTabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mPendingSelection:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPTabLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->setScrollPosition(IFZ)V

    iget v1, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mScrollState:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mPendingSelection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mPendingSelection:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->getTabAt(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    iput v2, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mPendingSelection:I

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$TabLayoutOnPageChangeListener;->mPendingSelection:I

    return-void
.end method
