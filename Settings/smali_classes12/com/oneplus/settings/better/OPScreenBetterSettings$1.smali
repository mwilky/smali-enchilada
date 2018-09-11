.class Lcom/oneplus/settings/better/OPScreenBetterSettings$1;
.super Landroid/os/Handler;
.source "OPScreenBetterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPScreenBetterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPScreenBetterSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPScreenBetterSettings;

    .line 79
    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    const-string v1, "oem:qdcm:mode_1"

    invoke-static {v0, v1}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$002(Lcom/oneplus/settings/better/OPScreenBetterSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    const-string v1, "oem:qdcm:mode_3"

    invoke-static {v0, v1}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$002(Lcom/oneplus/settings/better/OPScreenBetterSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    const-string v1, "oem:qdcm:mode_2"

    invoke-static {v0, v1}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$002(Lcom/oneplus/settings/better/OPScreenBetterSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    const-string v1, "oem:qdcm:mode_1"

    invoke-static {v0, v1}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$002(Lcom/oneplus/settings/better/OPScreenBetterSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    nop

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$102(Lcom/oneplus/settings/better/OPScreenBetterSettings;I)I

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    .line 106
    invoke-static {v0}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$200(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_eyecare_enable"

    .line 105
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "eyeCareStatus":I
    if-nez v0, :cond_2

    .line 111
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    invoke-static {v1, v3}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$302(Lcom/oneplus/settings/better/OPScreenBetterSettings;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 112
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$300(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/net/LocalSocket;

    move-result-object v1

    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v4, "pps"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 114
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$300(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 116
    .local v1, "os":Ljava/io/OutputStream;
    move v3, v2

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 118
    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$000(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 120
    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$300(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/net/LocalSocket;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    .line 121
    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$300(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/net/LocalSocket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 122
    .local v4, "is":Ljava/io/InputStream;
    new-array v5, v5, [B

    .line 124
    .local v5, "buffer":[B
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 125
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 126
    .local v6, "result":Ljava/lang/String;
    const-string v7, "Success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0x8

    if-eqz v7, :cond_0

    .line 127
    const-string v7, "OPScreenBetterSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "succ buffer : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    goto :goto_2

    .line 131
    :cond_0
    const-string v7, "OPScreenBetterSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail buffer : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " i = "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 131
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 116
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "buffer":[B
    .end local v6    # "result":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    .end local v3    # "i":I
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 145
    .end local v1    # "os":Ljava/io/OutputStream;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    .line 146
    invoke-static {v1}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$200(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_better_status"

    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    .line 147
    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$100(Lcom/oneplus/settings/better/OPScreenBetterSettings;)I

    move-result v3

    .line 145
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    const-string v1, "OPScreenBetterSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "M_TYPE_STRING : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->access$000(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "eyeCareStatus":I
    goto :goto_3

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const-string v1, "OPScreenBetterSettings"

    const-string v2, "socket exception !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
