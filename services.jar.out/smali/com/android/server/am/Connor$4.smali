.class Lcom/android/server/am/Connor$4;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 277
    iput-object p1, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$800(Lcom/android/server/am/Connor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$700(Lcom/android/server/am/Connor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$900(Lcom/android/server/am/Connor;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x44

    invoke-static {v0}, Lcom/android/server/am/Connor;->nativeGetSysTemp(I)I

    move-result v0

    const v1, 0x9858

    if-ge v0, v1, :cond_1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$1000(Lcom/android/server/am/Connor;)V

    .line 284
    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/Connor;->setTraining(Z)V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v0}, Lcom/android/server/am/Connor;->access$1100(Lcom/android/server/am/Connor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_2
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
