.class public final Lcom/oem/debug/OemManager;
.super Ljava/lang/Object;
.source "OemManager.java"


# static fields
.field public static final ANDROID_PANIC_TAG:Ljava/lang/String; = "SYSTEM_SERVER"

.field public static final ANDROID_PANIC_TAG_BEGIN:Ljava/lang/String; = "<android-panic-begin>\n"

.field public static final ANDROID_PANIC_TAG_END:Ljava/lang/String; = "<android-panic-end>\n"

.field private static DATA_SIZE:I = 0x0

.field private static final DEBUG:Z = true

.field public static final ENGINEERINGMODE_TEST_BEGIN:Ljava/lang/String; = "<engineeringmode-test-begin>\n"

.field public static final ENGINEERINGMODE_TEST_END:Ljava/lang/String; = "<engineeringmode-test-end>\n"

.field public static final ENGINEERINGMODE_TEST_TAG:Ljava/lang/String; = "ENGINEERINGMODE_TEST"

.field private static final INIT_TRY_TIMES:I = 0x3

.field public static final KERNEL_PANIC_TAG:Ljava/lang/String; = "SYSTEM_LAST_KMSG"

.field public static final KERNEL_PANIC_TAG_BEGIN:Ljava/lang/String; = "<kernel-panic-begin>\n"

.field public static final KERNEL_PANIC_TAG_END:Ljava/lang/String; = "<kernel-panic-end>\n"

.field public static final SERVICE_NAME:Ljava/lang/String; = "OEM"

.field public static final SHUTDOWN_TAG:Ljava/lang/String; = "SYSTEM_SHUTDOWN"

.field public static final SHUTDOWN_TAG_BEGIN:Ljava/lang/String; = "<shutdown-begin>\n"

.field public static final SHUTDOWN_TAG_END:Ljava/lang/String; = "<shutdown-end>\n"

.field public static final TAG:Ljava/lang/String; = "oemManager"

.field public static TYPE_LOGSIZE:I

.field public static TYPE_PANIC:I

.field public static TYPE_REBOOT:I

.field public static TYPE_SHUTDOWN:I

.field private static sService:Lcom/oem/os/IOemService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/oem/debug/OemManager;->TYPE_PANIC:I

    const/4 v0, 0x1

    sput v0, Lcom/oem/debug/OemManager;->TYPE_SHUTDOWN:I

    const/4 v0, 0x2

    sput v0, Lcom/oem/debug/OemManager;->TYPE_REBOOT:I

    const/4 v0, 0x3

    sput v0, Lcom/oem/debug/OemManager;->TYPE_LOGSIZE:I

    const/16 v0, 0x10

    sput v0, Lcom/oem/debug/OemManager;->DATA_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpShutdownMsg(Ljava/lang/String;)V
    .locals 10

    const-string v0, "oemManager"

    const-string v1, "dumpShutdownMsg e"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.build.kernel.id"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    const-string v3, "shutdown reason:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kernel id["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "---"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "---"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "---"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SYSTEM_SHUTDOWN"

    invoke-static {v5, v6}, Lcom/oem/debug/OemManager;->writeLogToPartition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "oemManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "write normal shutdown log size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v7, Lcom/oem/debug/OemManager;->TYPE_SHUTDOWN:I

    invoke-static {v7}, Lcom/oem/debug/OemManager;->incrementCriticalData(I)I

    move-result v7

    if-gez v7, :cond_3

    const-string v7, "oemManager"

    const-string v8, "increment normal shutdown times failed!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static incrementCriticalData(I)I
    .locals 5

    const/4 v0, -0x1

    if-gez p0, :cond_0

    return v0

    :cond_0
    sget v1, Lcom/oem/debug/OemManager;->DATA_SIZE:I

    invoke-static {p0, v1}, Lcom/oem/debug/OemManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    nop

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/oem/debug/OemManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_3

    :goto_2
    nop

    const-string v3, "oemManager"

    const-string v4, "increment critical data failed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v0
.end method

.method public static final init()Z
    .locals 5

    sget-object v0, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    :cond_1
    const-string v2, "oemManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to OEMService Instance! times = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "OEM"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oem/os/IOemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemService;

    move-result-object v2

    sput-object v2, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    sget-object v2, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    const/4 v1, 0x0

    return v1
.end method

.method public static readCriticalData(I)I
    .locals 5

    const/4 v0, 0x0

    sget v1, Lcom/oem/debug/OemManager;->DATA_SIZE:I

    invoke-static {p0, v1}, Lcom/oem/debug/OemManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "oemManager"

    const-string v4, "read critical data failed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0

    :cond_1
    :goto_1
    return v0
.end method

.method public static readCriticalData(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oem/debug/OemManager;->init()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    invoke-interface {v1, p0, p1}, Lcom/oem/os/IOemService;->readCriticalData(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "oemManager"

    const-string v3, "read Critical Data exception!\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static readRawPartition(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oem/debug/OemManager;->init()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    invoke-interface {v1, p0, p1}, Lcom/oem/os/IOemService;->readRawPartition(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "oemManager"

    const-string v3, "read Raw Partition exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static writeCriticalData(ILjava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    sget-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oem/debug/OemManager;->init()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    invoke-interface {v1, p0, p1}, Lcom/oem/os/IOemService;->writeCriticalData(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "oemManager"

    const-string v3, "write Critical Data exception!\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static writeLogToPartition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, ""

    const-string v2, ""

    const-string v3, "SYSTEM_SHUTDOWN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "<shutdown-begin>\n"

    const-string v2, "<shutdown-end>\n"

    goto :goto_0

    :cond_1
    const-string v3, "SYSTEM_LAST_KMSG"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "<kernel-panic-begin>\n"

    const-string v2, "<kernel-panic-end>\n"

    goto :goto_0

    :cond_2
    const-string v3, "SYSTEM_SERVER"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "<android-panic-begin>\n"

    const-string v2, "<android-panic-end>\n"

    goto :goto_0

    :cond_3
    const-string v3, "ENGINEERINGMODE_TEST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "<engineeringmode-test-begin>\n"

    const-string v2, "<engineeringmode-test-end>\n"

    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oem/debug/OemManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public static writeRawPartition(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    sget-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oem/debug/OemManager;->init()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    invoke-interface {v1, p0}, Lcom/oem/os/IOemService;->writeRawPartition(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "oemManager"

    const-string v3, "write Raw Partition exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method
