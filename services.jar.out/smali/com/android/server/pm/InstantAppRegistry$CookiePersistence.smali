.class final Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;
.super Landroid/os/Handler;
.source "InstantAppRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CookiePersistence"
.end annotation


# static fields
.field private static final PERSIST_COOKIE_DELAY_MILLIS:J = 0x3e8L


# instance fields
.field private final mPendingPersistCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/PackageParser$Package;",
            "Lcom/android/internal/os/SomeArgs;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/InstantAppRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    return-void
.end method

.method private addPendingPersistCookieLPw(ILandroid/content/pm/PackageParser$Package;[BLjava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removeMessages(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_0
    return-void
.end method

.method public getPendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)[B
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, [B

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v5, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v5, v3, v6, v4, v0}, Lcom/android/server/pm/InstantAppRegistry;->access$200(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public schedulePersistLPw(ILandroid/content/pm/PackageParser$Package;[B)V
    .locals 5

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/InstantAppRegistry;->access$000(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "InstantAppRegistry"

    const-string v2, "Parsed Instant App contains no valid signatures!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/server/pm/InstantAppRegistry;->access$100(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->addPendingPersistCookieLPw(ILandroid/content/pm/PackageParser$Package;[BLjava/io/File;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
