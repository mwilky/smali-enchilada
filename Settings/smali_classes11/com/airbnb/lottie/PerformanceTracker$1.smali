.class Lcom/airbnb/lottie/PerformanceTracker$1;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/PerformanceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v4/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/PerformanceTracker;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/PerformanceTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/PerformanceTracker;

    .line 38
    iput-object p1, p0, Lcom/airbnb/lottie/PerformanceTracker$1;->this$0:Lcom/airbnb/lottie/PerformanceTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v4/util/Pair;Landroid/support/v4/util/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/support/v4/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .line 41
    .local p1, "o1":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    .local p2, "o2":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 42
    .local v0, "r1":F
    iget-object v1, p2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 43
    .local v1, "r2":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 44
    const/4 v2, 0x1

    return v2

    .line 45
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 46
    const/4 v2, -0x1

    return v2

    .line 48
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Landroid/support/v4/util/Pair;

    check-cast p2, Landroid/support/v4/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/PerformanceTracker$1;->compare(Landroid/support/v4/util/Pair;Landroid/support/v4/util/Pair;)I

    move-result p1

    return p1
.end method
