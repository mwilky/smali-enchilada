.class Lcom/android/server/vr/VrManagerService$VrState;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$LogFormattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VrState"
.end annotation


# instance fields
.field final callingPackage:Landroid/content/ComponentName;

.field final defaultPermissionsGranted:Z

.field final enabled:Z

.field final processId:I

.field final running2dInVr:Z

.field final targetPackageName:Landroid/content/ComponentName;

.field final timestamp:J

.field final userId:I


# direct methods
.method constructor <init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    iput-boolean p2, p0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    iput p4, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    iput p5, p0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    iput-object p3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    return-void
.end method

.method constructor <init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    iput-boolean p2, p0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    iput p4, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    iput p5, p0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    iput-object p3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    iput-boolean p7, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    return-void
.end method


# virtual methods
.method public toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 6

    const-string v0, "  "

    const-string v1, "\n"

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "State changed to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    if-eqz v3, :cond_0

    const-string v3, "ENABLED"

    goto :goto_0

    :cond_0
    const-string v3, "DISABLED"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "User="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Current VR Activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    const-string v3, "None"

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Bound VrListenerService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    if-nez v3, :cond_2

    const-string v3, "None"

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Default permissions granted to the bound VrListenerService."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
