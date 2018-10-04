.class public Lcom/oneplus/config/ConfigGrabber;
.super Ljava/lang/Object;
.source "ConfigGrabber.java"


# instance fields
.field private final OPCONFIG_URI:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Config:Grabber:"

    iput-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    const-string v0, "content://com.oneplus.config.ConfigProvider/"

    iput-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->OPCONFIG_URI:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/config/ConfigGrabber;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/config/ConfigGrabber;->mConfigName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public grabConfig()Lorg/json/JSONArray;
    .locals 11

    iget-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.oneplus.config.ConfigProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/config/ConfigGrabber;->mConfigName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v1, "config_content"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v9, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, v7

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v8, v1

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/oneplus/config/ConfigGrabber;->mContext:Landroid/content/Context;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lnet/oneplus/odm/crypto/ODMEncrypter;->decryptFromAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v1

    :cond_0
    if-eqz v8, :cond_2

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    goto :goto_0

    :catch_1
    move-exception v1

    if-eqz v8, :cond_1

    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v2

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_3
    iget-object v4, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_1
    nop

    :goto_2
    if-eqz v8, :cond_2

    goto :goto_0

    :catch_3
    move-exception v1

    iget-object v2, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_2

    goto :goto_0

    :catch_4
    move-exception v1

    iget-object v2, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    :goto_3
    return-object v9

    :goto_4
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method
