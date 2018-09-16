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

    .line 84
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$000(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$102(Lcom/android/systemui/fingerprint/QLRecyclerView;F)F

    .line 90
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$202(Lcom/android/systemui/fingerprint/QLRecyclerView;Z)Z

    .line 93
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$300(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$400(Lcom/android/systemui/fingerprint/QLRecyclerView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$500(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$500(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    return-void
.end method
