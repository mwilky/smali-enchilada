.class Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
.super Ljava/util/ArrayList;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NeededUriGrants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/server/am/ActivityManagerService$GrantUri;",
        ">;"
    }
.end annotation


# instance fields
.field final flags:I

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetPkg:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetUid:I

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->flags:I

    return-void
.end method


# virtual methods
.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetPkg:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetUid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->flags:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService$GrantUri;

    const-wide v5, 0x20b00000004L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/ActivityManagerService$GrantUri;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
