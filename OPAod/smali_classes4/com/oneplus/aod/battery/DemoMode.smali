.class public interface abstract Lcom/oneplus/aod/battery/DemoMode;
.super Ljava/lang/Object;
.source "DemoMode.java"


# static fields
.field public static final ACTION_DEMO:Ljava/lang/String; = "com.android.systemui.demo"

.field public static final COMMAND_BARS:Ljava/lang/String; = "bars"

.field public static final COMMAND_BATTERY:Ljava/lang/String; = "battery"

.field public static final COMMAND_CLOCK:Ljava/lang/String; = "clock"

.field public static final COMMAND_ENTER:Ljava/lang/String; = "enter"

.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit"

.field public static final COMMAND_NETWORK:Ljava/lang/String; = "network"

.field public static final COMMAND_NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field public static final COMMAND_STATUS:Ljava/lang/String; = "status"

.field public static final COMMAND_VOLUME:Ljava/lang/String; = "volume"

.field public static final DEMO_MODE_ALLOWED:Ljava/lang/String; = "sysui_demo_allowed"

.field public static final EXTRA_COMMAND:Ljava/lang/String; = "command"


# virtual methods
.method public abstract dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
