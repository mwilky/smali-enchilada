.class Lcom/android/keyguard/KeyguardUpdateMonitor$17;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field final synthetic val$lastType:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 3071
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->val$type:I

    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->val$lastType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3074
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3075
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 3076
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_0

    .line 3077
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->val$type:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFacelockStateChanged(I)V

    .line 3074
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3081
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->val$lastType:I

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->val$type:I

    if-ne v1, v2, :cond_2

    return-void

    .line 3083
    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->val$type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 3084
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5700(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    goto :goto_1

    .line 3086
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5700(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    .line 3089
    :goto_1
    return-void
.end method
