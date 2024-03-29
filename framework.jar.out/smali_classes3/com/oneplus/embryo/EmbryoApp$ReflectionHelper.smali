.class Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;
.super Ljava/lang/Object;
.source "EmbryoApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/embryo/EmbryoApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectionHelper"
.end annotation


# static fields
.field private static final buildClass:Ljava/lang/String; = "com.oneplus.embryo.BuildVersion"

.field private static final implClass:Ljava/lang/String; = "com.oneplus.embryo.EmbryoAppImpl"

.field private static final path:Ljava/lang/String; = "/system/framework/embryo.jar"


# instance fields
.field private mBuildClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mImplClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mVersionField:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mImplClz:Ljava/lang/Class;

    iput-object v0, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mBuildClz:Ljava/lang/Class;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mEnabled:Z

    iput-object v0, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mVersionField:Ljava/lang/reflect/Field;

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/framework/embryo.jar"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mEnabled:Z

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/embryo.jar"

    const-class v4, Lcom/oneplus/embryo/EmbryoApp;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v3, "com.oneplus.embryo.EmbryoAppImpl"

    invoke-virtual {v2, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mImplClz:Ljava/lang/Class;

    const-string v3, "com.oneplus.embryo.BuildVersion"

    invoke-virtual {v2, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mBuildClz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mImplClz:Ljava/lang/Class;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mEnabled:Z

    iget-object v3, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mBuildClz:Ljava/lang/Class;

    const-string v4, "BUILD_TIMESTAMP"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mVersionField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Embryo"

    const-string v4, "Cannot load embryo library"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mEnabled:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public get()Lcom/oneplus/embryo/IEmbryoApp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "IEmbryoApp::get()"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mImplClz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/embryo/IEmbryoApp;

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mVersionField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const-string v0, "N/A"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mVersionField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error"

    return-object v1
.end method

.method isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->mEnabled:Z

    return v0
.end method
