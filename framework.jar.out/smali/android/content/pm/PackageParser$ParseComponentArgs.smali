.class public Landroid/content/pm/PackageParser$ParseComponentArgs;
.super Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.source "PackageParser.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseComponentArgs"
.end annotation


# instance fields
.field final descriptionRes:I

.field final enabledRes:I

.field flags:I

.field final processRes:I

.field final sepProcesses:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V
    .locals 0
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_outError"    # [Ljava/lang/String;
    .param p3, "_nameRes"    # I
    .param p4, "_labelRes"    # I
    .param p5, "_iconRes"    # I
    .param p6, "_roundIconRes"    # I
    .param p7, "_logoRes"    # I
    .param p8, "_bannerRes"    # I
    .param p9, "_sepProcesses"    # [Ljava/lang/String;
    .param p10, "_processRes"    # I
    .param p11, "_descriptionRes"    # I
    .param p12, "_enabledRes"    # I

    .line 387
    invoke-direct/range {p0 .. p8}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    .line 389
    iput-object p9, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    .line 390
    iput p10, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    .line 391
    iput p11, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    .line 392
    iput p12, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    .line 393
    return-void
.end method
