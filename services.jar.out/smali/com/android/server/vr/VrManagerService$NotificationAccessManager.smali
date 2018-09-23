.class final Lcom/android/server/vr/VrManagerService$NotificationAccessManager;
.super Ljava/lang/Object;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationAccessManager"
.end annotation


# instance fields
.field private final mAllowedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_0

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v0, :cond_1

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v6, v5, v4}, Lcom/android/server/vr/VrManagerService;->access$1100(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v6, v5}, Lcom/android/server/vr/VrManagerService;->access$1200(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v6, v5, v4}, Lcom/android/server/vr/VrManagerService;->access$1300(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/vr/VrManagerService;->access$1100(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4}, Lcom/android/server/vr/VrManagerService;->access$1200(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/vr/VrManagerService;->access$1300(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4}, Lcom/android/server/vr/VrManagerService;->access$1400(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/vr/VrManagerService;->access$1500(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/vr/VrManagerService;->access$1600(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
