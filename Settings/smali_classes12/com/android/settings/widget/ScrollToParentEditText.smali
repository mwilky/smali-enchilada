.class public Lcom/android/settings/widget/ScrollToParentEditText;
.super Lcom/android/settings/widget/ImeAwareEditText;
.source "ScrollToParentEditText.java"


# instance fields
.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ImeAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ScrollToParentEditText;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/widget/ScrollToParentEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/widget/ScrollToParentEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/widget/ScrollToParentEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v1

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/ImeAwareEditText;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v1

    return v1
.end method
