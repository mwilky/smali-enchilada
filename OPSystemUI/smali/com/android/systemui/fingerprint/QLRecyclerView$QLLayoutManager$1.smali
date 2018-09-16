.class Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "QLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

.field final synthetic val$this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;Landroid/content/Context;Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;
    .param p2, "x0"    # Landroid/content/Context;

    .line 263
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager$1;->this$1:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iput-object p3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager$1;->val$this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 266
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager$1;->this$1:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$100(Lcom/android/systemui/fingerprint/QLRecyclerView;)F

    move-result v0

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method
