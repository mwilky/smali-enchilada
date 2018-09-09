.class Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;
.super Landroid/os/UEventObserver;
.source "ThreeKeyHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OemUEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method constructor <init>(Lcom/oneplus/threekey/ThreeKeyHw;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/threekey/ThreeKeyHw;

    .line 180
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 188
    const-string v0, "ThreeKeyHw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_0
    const-string v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "devPath":Ljava/lang/String;
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 195
    .local v2, "state":I
    iget-object v3, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v3}, Lcom/oneplus/threekey/ThreeKeyHw;->access$000(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "soc:tri_state_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_4

    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, "j":I
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 199
    const/4 v5, -0x1

    .line 200
    .local v5, "curState":I
    const/16 v6, 0x400

    :try_start_1
    new-array v7, v6, [C

    .line 201
    .local v7, "buffer":[C
    new-instance v8, Ljava/io/FileReader;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v10}, Lcom/oneplus/threekey/ThreeKeyHw;->access$000(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "cable."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/state"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 202
    .local v8, "file":Ljava/io/FileReader;
    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 203
    .local v6, "len":I
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 204
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v5, v9

    .line 205
    if-nez v5, :cond_0

    .line 206
    add-int/lit8 v2, v3, 0x1

    .line 207
    goto :goto_1

    .line 198
    .end local v5    # "curState":I
    .end local v6    # "len":I
    .end local v7    # "buffer":[C
    .end local v8    # "file":Ljava/io/FileReader;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .end local v3    # "j":I
    :catch_0
    move-exception v3

    goto :goto_3

    .line 217
    :catch_1
    move-exception v3

    goto :goto_5

    .line 210
    .restart local v3    # "j":I
    :cond_1
    :goto_1
    const/4 v5, 0x1

    if-ne v5, v2, :cond_2

    .line 211
    const/4 v2, 0x3

    goto :goto_2

    .line 212
    :cond_2
    if-ne v4, v2, :cond_3

    .line 213
    const/4 v2, 0x1

    .line 216
    :cond_3
    :goto_2
    const-string v4, "ThreeKeyHw"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v6}, Lcom/oneplus/threekey/ThreeKeyHw;->access$000(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "cable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/state\nstate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v3    # "j":I
    goto :goto_4

    .line 220
    :goto_3
    nop

    .line 221
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ThreeKeyHw"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_6

    .line 217
    :goto_5
    nop

    .line 218
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "ThreeKeyHw"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v6}, Lcom/oneplus/threekey/ThreeKeyHw;->access$000(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found while attempting to determine initial switch state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_4

    .line 224
    :cond_4
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 226
    :goto_6
    iget-object v3, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v3, v2}, Lcom/oneplus/threekey/ThreeKeyHw;->access$100(Lcom/oneplus/threekey/ThreeKeyHw;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 229
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "state":I
    goto :goto_7

    .line 227
    :catch_2
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "ThreeKeyHw"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_7
    return-void
.end method

.method startMonitor()V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEVPATH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->access$000(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 183
    return-void
.end method
