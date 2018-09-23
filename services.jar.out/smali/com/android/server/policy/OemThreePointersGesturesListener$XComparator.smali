.class Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;
.super Ljava/lang/Object;
.source "OemThreePointersGesturesListener.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemThreePointersGesturesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/graphics/Point;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemThreePointersGesturesListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;->this$0:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 2

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;->compare(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p1

    return p1
.end method
