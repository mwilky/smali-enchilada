.class final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field duration:I

.field mode:I

.field final op:I

.field final packageName:Ljava/lang/String;

.field proxyPackageName:Ljava/lang/String;

.field proxyUid:I

.field rejectTime:[J

.field startNesting:I

.field startRealtime:J

.field time:[J

.field final uid:I

.field final uidState:Lcom/android/server/AppOpsService$UidState;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/AppOpsService$Op;->time:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iput-object p1, p0, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v0, p1, Lcom/android/server/AppOpsService$UidState;->uid:I

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v0, p0, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    return-void
.end method


# virtual methods
.method getMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v0

    return v0
.end method

.method hasAnyTime()Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/AppOpsService$Op;->time:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    aget-wide v6, v2, v1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
