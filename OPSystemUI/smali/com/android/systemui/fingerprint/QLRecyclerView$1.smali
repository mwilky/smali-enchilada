.class Lcom/android/systemui/fingerprint/QLRecyclerView$1;
.super Ljava/lang/Object;
.source "QLRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/QLRecyclerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$000(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$102(Lcom/android/systemui/fingerprint/QLRecyclerView;F)F

    .line 77
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$202(Lcom/android/systemui/fingerprint/QLRecyclerView;Z)Z

    .line 79
    return-void
.end method
