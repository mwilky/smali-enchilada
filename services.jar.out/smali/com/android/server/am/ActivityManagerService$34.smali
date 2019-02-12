.class Lcom/android/server/am/ActivityManagerService$34;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2800(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPcbNumber"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$3000(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/am/ActivityManagerService;->access$2902(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/am/ActivityManagerService;->access$2902(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/am/ActivityManagerService;->access$3100(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    nop

    :cond_2
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    :try_start_1
    const-string v0, "ActivityManager"

    const-string v1, "getPcbNumber...."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2800(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPcbNumber"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$3000(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Object;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "gsm.serial"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$3200(Lcom/android/server/am/ActivityManagerService;)[B

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_4

    move-object v5, v4

    move v4, v2

    :goto_2
    array-length v6, v3

    if-ge v4, v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move-object v4, v5

    :cond_4
    const-string/jumbo v5, "vendor.oem.device.imeicache0"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "vendor.oem.device.imeicache1"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$3300(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v7

    if-nez v7, :cond_5

    move-object v6, v5

    :cond_5
    const-string v7, ""

    const-string/jumbo v8, "vendor.oem.bt.addr"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiMacFromNvItem()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WIFI: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nBT: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nPCBA: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nMMI: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nCarrier: 00000000\nIMEI1: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nIMEI2: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v10, v2}, Lcom/android/server/am/ActivityManagerService;->access$3400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_3
    nop

    :cond_7
    :goto_4
    return-void
.end method
