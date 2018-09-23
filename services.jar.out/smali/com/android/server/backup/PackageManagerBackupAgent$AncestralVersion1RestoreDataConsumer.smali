.class Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;
.super Ljava/lang/Object;
.source "PackageManagerBackupAgent.java"

# interfaces
.implements Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/PackageManagerBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AncestralVersion1RestoreDataConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/PackageManagerBackupAgent;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/PackageManagerBackupAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;)V

    return-void
.end method


# virtual methods
.method public consumeRestoreData(Landroid/app/backup/BackupDataInput;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, -0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v5

    new-array v6, v5, [B

    const/4 v7, 0x0

    move-object/from16 v8, p1

    invoke-virtual {v8, v6, v7, v5}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v10, "@meta@"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v11, v10}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$202(Lcom/android/server/backup/PackageManagerBackupAgent;I)I

    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$302(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$402(Lcom/android/server/backup/PackageManagerBackupAgent;Z)Z

    nop

    :goto_1
    move-object/from16 v16, v1

    goto :goto_3

    :cond_0
    const-string v10, "@home@"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$502(Lcom/android/server/backup/PackageManagerBackupAgent;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$602(Lcom/android/server/backup/PackageManagerBackupAgent;J)J

    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$702(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v9}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$900(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$802(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_2

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    goto :goto_2

    :cond_2
    int-to-long v11, v10

    :goto_2
    invoke-static {v9}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$900(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v16, v1

    goto :goto_4

    :cond_3
    new-instance v14, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v14}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v4, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-direct {v15, v1, v11, v12, v13}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V

    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    goto :goto_5

    :cond_4
    move-object/from16 v16, v1

    :goto_4
    const-string v1, "PMBA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not restoring package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " since it appears to have no signatures."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_5
    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_5
    move-object/from16 v8, p1

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v1, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$1002(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/HashMap;)Ljava/util/HashMap;

    return-void
.end method
