.class Lcom/android/server/am/Uterus$1;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Uterus;->scheduleBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method constructor <init>(Lcom/android/server/am/Uterus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v0}, Lcom/android/server/am/Uterus;->access$300(Lcom/android/server/am/Uterus;)V

    iget-object v0, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v0}, Lcom/android/server/am/Uterus;->access$400(Lcom/android/server/am/Uterus;)V

    return-void
.end method
