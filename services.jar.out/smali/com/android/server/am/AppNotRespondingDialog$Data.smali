.class Lcom/android/server/am/AppNotRespondingDialog$Data;
.super Ljava/lang/Object;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field final aboveSystem:Z

.field final activity:Lcom/android/server/am/ActivityRecord;

.field final proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->activity:Lcom/android/server/am/ActivityRecord;

    iput-boolean p3, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->aboveSystem:Z

    return-void
.end method
