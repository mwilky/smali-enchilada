.class final Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PendingTempWhitelist"
.end annotation


# instance fields
.field final duration:J

.field final tag:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method constructor <init>(IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->targetUid:I

    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->duration:J

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->targetUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->duration:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->tag:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
