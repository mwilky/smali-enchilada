.class Landroid/view/View$SendViewScrolledAccessibilityEvent;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewScrolledAccessibilityEvent"
.end annotation


# instance fields
.field public mDeltaX:I

.field public mDeltaY:I

.field public volatile mIsPending:Z

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/view/View$SendViewScrolledAccessibilityEvent;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$SendViewScrolledAccessibilityEvent;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    return-void
.end method


# virtual methods
.method public post(II)V
    .locals 3

    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    iget-boolean v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    iget-object v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget v1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollDeltaX(I)V

    iget v1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollDeltaY(I)V

    iget-object v1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    invoke-direct {p0}, Landroid/view/View$SendViewScrolledAccessibilityEvent;->reset()V

    return-void
.end method
