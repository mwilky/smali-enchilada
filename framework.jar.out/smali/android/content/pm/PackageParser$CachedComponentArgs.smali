.class Landroid/content/pm/PackageParser$CachedComponentArgs;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedComponentArgs"
.end annotation


# instance fields
.field mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/PackageParser$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>()V

    return-void
.end method
