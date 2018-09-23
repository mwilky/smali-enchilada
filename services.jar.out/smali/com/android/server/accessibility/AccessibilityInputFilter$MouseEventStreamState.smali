.class Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MouseEventStreamState"
.end annotation


# instance fields
.field private mMotionSequenceStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->reset()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    return-void
.end method

.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    return v1
.end method

.method public final shouldProcessScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
