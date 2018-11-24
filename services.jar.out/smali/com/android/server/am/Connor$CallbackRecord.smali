.class Lcom/android/server/am/Connor$CallbackRecord;
.super Ljava/lang/Object;
.source "Connor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallbackRecord"
.end annotation


# instance fields
.field public confidence:F

.field public lastOutput:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/Connor;F)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/Connor$CallbackRecord;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/Connor$CallbackRecord;->lastOutput:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/Connor$CallbackRecord;->confidence:F

    return-void
.end method
