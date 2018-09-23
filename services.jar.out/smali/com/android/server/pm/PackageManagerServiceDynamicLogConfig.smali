.class public Lcom/android/server/pm/PackageManagerServiceDynamicLogConfig;
.super Ljava/lang/Object;
.source "PackageManagerServiceDynamicLogConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dynamicallyConfigLogTag(Lcom/android/server/pm/PackageManagerService;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigLogTag, opti:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", args.length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigLogTag, args["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const-string v2, "********** Invalid argument! Get detail help as bellow: **********"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceDynamicLogConfig;->logoutTagConfigHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    aget-object v0, p2, v2

    const-string v2, "1"

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigLogTag, tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "all"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BROADCASTS:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHARED_LIBRARIES:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_ABI_SELECTION:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_TRIAGED_MISSING:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_APP_DATA:Z

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v2, "install"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "remove"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "scan"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "verify"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    goto :goto_1

    :cond_7
    const-string v2, "abi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_ABI_SELECTION:Z

    goto :goto_1

    :cond_8
    const-string/jumbo v2, "opt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    goto :goto_1

    :cond_9
    const-string/jumbo v2, "match"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    goto :goto_1

    :cond_a
    const-string/jumbo v2, "info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    goto :goto_1

    :cond_b
    const-string v2, "domain"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    :goto_1
    return-void

    :cond_c
    const-string v2, "Failed! Invalid argument! Type cmd for help: dumpsys package log"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static logoutTagConfigHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "********************** Help begin:**********************"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "1 package all:  DEBUG_* "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log all 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "2 package install:  DEBUG_INSTALL "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log install 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "3 package remove:   DEBUG_REMOVE "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log remove 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "4 package settings: DEBUG_SETTINGS "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log settings 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "5 package scan:     DEBUG_PACKAGE_SCANNING "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log scan 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "6 package verify:   DEBUG_VERIFY "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log verify 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "7 package abi:      DEBUG_ABI_SELECTION "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log abi 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "8 package opt:      DEBUG_DEXOPT "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log opt 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "9 package match:    DEBUG_INTENT_MATCHING "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log match 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "10 package info:    DEBUG_PACKAGE_INFO "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log info 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "11 package info:    DEBUG_DOMAIN_VERIFICATION "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log domain 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
