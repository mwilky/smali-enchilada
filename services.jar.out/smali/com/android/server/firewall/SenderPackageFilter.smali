.class public Lcom/android/server/firewall/SenderPackageFilter;
.super Ljava/lang/Object;
.source "SenderPackageFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field public final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/firewall/SenderPackageFilter$1;

    const-string/jumbo v1, "sender-package"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderPackageFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/firewall/SenderPackageFilter;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 6

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/firewall/SenderPackageFilter;->mPackageName:Ljava/lang/String;

    const/high16 v5, 0x400000

    invoke-interface {v0, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    if-ne v2, v1, :cond_0

    return v3

    :cond_0
    invoke-static {v2, p4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    return v1
.end method
