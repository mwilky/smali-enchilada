.class public Lcom/android/internal/util/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/MessageUtils$DuplicateConstantError;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_PREFIXES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/internal/util/MessageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    const-string v0, "CMD_"

    const-string v1, "EVENT_"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public static findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v0

    array-length v4, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v9, v0

    nop

    nop

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_5

    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v15

    xor-int/2addr v15, v14

    or-int/2addr v0, v15

    if-eqz v0, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    array-length v5, v2

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v5, :cond_4

    aget-object v1, v2, v14

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    move-object/from16 v17, v1

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    nop

    :try_start_3
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v18, v16

    move-object/from16 v1, v18

    if-eqz v1, :cond_3

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;

    invoke-direct {v2, v15, v1, v0}, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_3
    :goto_3
    invoke-virtual {v3, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_1
    move-exception v0

    nop

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_2

    :cond_4
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    sget-object v1, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t list fields of class "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_6
    return-object v3
.end method
