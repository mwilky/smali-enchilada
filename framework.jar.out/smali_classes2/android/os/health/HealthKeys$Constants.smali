.class public Landroid/os/health/HealthKeys$Constants;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# instance fields
.field private final mDataType:Ljava/lang/String;

.field private final mKeys:[[I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/os/health/HealthKeys$Constant;

    array-length v2, v0

    iget-object v3, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    array-length v3, v3

    new-array v3, v3, [Landroid/os/health/HealthKeys$SortedIntArray;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    new-instance v6, Landroid/os/health/HealthKeys$SortedIntArray;

    invoke-direct {v6, v2}, Landroid/os/health/HealthKeys$SortedIntArray;-><init>(I)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_3

    aget-object v6, v0, v5

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/os/health/HealthKeys$Constant;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/os/health/HealthKeys$Constant;->type()I

    move-result v8

    array-length v9, v3

    if-ge v8, v9, :cond_1

    :try_start_0
    aget-object v9, v3, v8

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/health/HealthKeys$SortedIntArray;->addValue(I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t read constant value type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " field="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown Constant type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    nop

    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/os/health/HealthKeys$SortedIntArray;->getArray()[I

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex(II)I
    .locals 4

    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeys(I)[I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSize(I)I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    array-length v0, v0

    return v0
.end method
