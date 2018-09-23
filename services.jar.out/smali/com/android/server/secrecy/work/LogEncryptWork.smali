.class public Lcom/android/server/secrecy/work/LogEncryptWork;
.super Lcom/android/server/secrecy/work/SecrecyWork;
.source "LogEncryptWork.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SecrecyService.LogEncryptWork"

    sput-object v0, Lcom/android/server/secrecy/work/LogEncryptWork;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/secrecy/work/LogEncryptWork;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/secrecy/work/LogEncryptWork;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/secrecy/work/SecrecyWork;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
