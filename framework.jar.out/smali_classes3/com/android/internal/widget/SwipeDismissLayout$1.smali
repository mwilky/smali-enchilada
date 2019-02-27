.class Lcom/android/internal/widget/SwipeDismissLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "SwipeDismissLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SwipeDismissLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SwipeDismissLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/internal/widget/SwipeDismissLayout$1;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$000(Lcom/android/internal/widget/SwipeDismissLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$100(Lcom/android/internal/widget/SwipeDismissLayout;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$200(Lcom/android/internal/widget/SwipeDismissLayout;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    new-instance v1, Lcom/android/internal/widget/-$$Lambda$SwipeDismissLayout$1$NDXsqpv65OVP2OutTHt-hDxJywg;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/-$$Lambda$SwipeDismissLayout$1$NDXsqpv65OVP2OutTHt-hDxJywg;-><init>(Lcom/android/internal/widget/SwipeDismissLayout$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
