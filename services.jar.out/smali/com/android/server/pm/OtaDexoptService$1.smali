.class Lcom/android/server/pm/OtaDexoptService$1;
.super Lcom/android/server/pm/Installer;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/OtaDexoptService;

.field final synthetic val$commands:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OtaDexoptService;Landroid/content/Context;ZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService$1;->this$0:Lcom/android/server/pm/OtaDexoptService;

    iput-object p4, p0, Lcom/android/server/pm/OtaDexoptService$1;->val$commands:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 4

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument while executing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "9 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dexopt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v5, p6

    invoke-direct {v0, v1, v5}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v6, p8

    invoke-direct {v0, v1, v6}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v7, p9

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v8, p10

    invoke-direct {v0, v1, v8}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v9, p11

    invoke-direct {v0, v1, v9}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v10, p14

    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v11, p15

    invoke-direct {v0, v1, v11}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v12, p16

    invoke-direct {v0, v1, v12}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    iget-object v13, v0, Lcom/android/server/pm/OtaDexoptService$1;->val$commands:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
