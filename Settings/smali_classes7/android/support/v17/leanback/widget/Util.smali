.class public Landroid/support/v17/leanback/widget/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static isDescendant(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 3
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    .line 34
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 35
    if-ne p1, p0, :cond_0

    .line 36
    const/4 v0, 0x1

    return v0

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 39
    .local v1, "p":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_1

    .line 40
    return v0

    .line 42
    :cond_1
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    .line 43
    .end local v1    # "p":Landroid/view/ViewParent;
    goto :goto_0

    .line 44
    :cond_2
    return v0
.end method
