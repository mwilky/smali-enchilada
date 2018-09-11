.class public Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;
.super Ljava/lang/Object;
.source "BgOActivityManager.java"

# interfaces
.implements Lcom/oneplus/settings/backgroundoptimize/IBgOActivityManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;


# instance fields
.field private getAllAppControlModes:Ljava/lang/reflect/Method;

.field private getAppControlMode:Ljava/lang/reflect/Method;

.field private getAppControlState:Ljava/lang/reflect/Method;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private setAppControlMode:Ljava/lang/reflect/Method;

.field private setAppControlState:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    const-string v0, "com.oneplus.appboot.AppControlModeManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getAllAppControlModes"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAllAppControlModes:Ljava/lang/reflect/Method;

    .line 37
    const-string v1, "getAppControlMode"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode:Ljava/lang/reflect/Method;

    .line 38
    const-string v1, "setAppControlMode"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlMode:Ljava/lang/reflect/Method;

    .line 39
    const-string v1, "getAppControlState"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlState:Ljava/lang/reflect/Method;

    .line 40
    const-string v1, "setAppControlState"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BgOActivityManager Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private convert(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/backgroundoptimize/AppControlMode;",
            ">;"
        }
    .end annotation

    .line 61
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 62
    .local v0, "packageName":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 63
    .local v1, "mode":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 64
    .local v2, "value":Ljava/lang/reflect/Field;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 68
    .local v5, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "packageName"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v0, v6

    .line 71
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mode"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v1, v7

    .line 73
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v2, v7

    .line 75
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_1

    .line 76
    :catch_0
    move-exception v6

    .line 77
    .local v6, "e1":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .end local v6    # "e1":Ljava/lang/Exception;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 83
    .local v6, "pn":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 84
    .local v7, "m":I
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 85
    .local v8, "n":I
    sget-object v9, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AppControl # convert: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v9, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    invoke-direct {v9, v6, v7, v8}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6    # "pn":Ljava/lang/String;
    .end local v7    # "m":I
    .end local v8    # "n":I
    goto :goto_2

    .line 91
    :catch_1
    move-exception v6

    .line 92
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 89
    .restart local v5    # "o":Ljava/lang/Object;
    :catch_2
    move-exception v6

    .line 90
    .local v6, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 87
    :catch_3
    move-exception v6

    .line 88
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 93
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    nop

    .line 94
    :goto_3
    goto/16 :goto_0

    .line 96
    .end local v4    # "iterator":Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->instance:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->instance:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->instance:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->instance:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    return-object v0
.end method


# virtual methods
.method public getAllAppControlModes(I)Ljava/util/List;
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/backgroundoptimize/AppControlMode;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAllAppControlModes:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 113
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 125
    :cond_1
    return-object v1
.end method

.method public getAllAppControlModesMap(I)Ljava/util/Map;
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/backgroundoptimize/AppControlMode;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    .line 103
    .local v3, "app":Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
    iget-object v4, v3, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v3    # "app":Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
    goto :goto_0

    .line 106
    :cond_0
    return-object v1
.end method

.method public getAppControlMode(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 132
    .local v1, "ret":I
    if-eqz v0, :cond_0

    .line 133
    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 136
    :cond_0
    sget-object v2, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppControl # getAppControlMode packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return v1
.end method

.method public getAppControlState(I)I
    .locals 5
    .param p1, "mode"    # I

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlState:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 151
    .local v1, "ret":I
    if-eqz v0, :cond_0

    .line 152
    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 155
    :cond_0
    sget-object v2, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppControl # getAppControlState mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return v1
.end method

.method public varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 167
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 168
    return-object v0

    .line 172
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 175
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 173
    :catch_2
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 179
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    nop

    .line 181
    :goto_1
    return-object v0
.end method

.method public setAppControlMode(Ljava/lang/String;II)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "value"    # I

    .line 142
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl # setAppControlMode packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return v2
.end method

.method public setAppControlState(II)I
    .locals 5
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .line 161
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl # setAppControlState mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlState:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return v3
.end method
