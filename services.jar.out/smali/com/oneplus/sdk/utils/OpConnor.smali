.class public Lcom/oneplus/sdk/utils/OpConnor;
.super Ljava/lang/Object;
.source "OpConnor.java"


# static fields
.field private static final AM_CLASS:Ljava/lang/String; = "android.app.ActivityManager"

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "OpConnor"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/sdk/utils/OpConnor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAggregateNext()[Ljava/lang/String;
    .locals 6

    .line 24
    const/4 v0, 0x0

    move-object v1, v0

    .line 26
    .local v1, "get_service":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v2, "android.app.ActivityManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 27
    .local v2, "activityManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getService"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v1, v3

    .line 28
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IActivityManager;

    .line 29
    .local v3, "iAm":Landroid/app/IActivityManager;
    invoke-interface {v3}, Landroid/app/IActivityManager;->getAggregateNext()[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 30
    .end local v2    # "activityManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "iAm":Landroid/app/IActivityManager;
    :catch_0
    move-exception v2

    .line 31
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "OpConnor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-boolean v3, Lcom/oneplus/sdk/utils/OpConnor;->DBG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    return-object v0
.end method
