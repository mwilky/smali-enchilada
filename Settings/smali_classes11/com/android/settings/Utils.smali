.class public final Lcom/android/settings/Utils;
.super Lcom/android/settingslib/Utils;
.source "Utils.java"


# static fields
.field public static final BADNESS_COLORS:[I

.field public static final OS_PKG:Ljava/lang/String; = "os"

.field public static final PERSISTENT:Ljava/lang/String; = "persistent"

.field public static final READ_ONLY:Ljava/lang/String; = "read_only"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "Settings"

.field public static final UPDATE_PREFERENCE_FLAG_SET_TITLE_TO_MATCHING_ACTIVITY:I = 0x1

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 128
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    .line 749
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    .line 750
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/Utils;->sFormatter:Ljava/util/Formatter;

    .line 749
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3bc7d8
        -0x1ab6e8
        -0xb8500
        -0x540d4
        -0x9861c9
        -0xf580be
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/settingslib/Utils;-><init>()V

    return-void
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "positiveAction"    # Ljava/lang/Runnable;

    .line 284
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 286
    const v1, 0x7f12083a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 287
    new-instance v1, Lcom/android/settings/Utils$1;

    invoke-direct {v1, p2}, Lcom/android/settings/Utils$1;-><init>(Ljava/lang/Runnable;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static carrierTableFieldValidate(Ljava/lang/String;)Z
    .locals 6
    .param p0, "field"    # Ljava/lang/String;

    .line 1030
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1031
    return v0

    .line 1032
    :cond_0
    const-string v1, "read_only"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "persistent"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "authtype"

    .line 1033
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sub_id"

    .line 1034
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1036
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 1037
    const-class v1, Landroid/provider/Telephony$Carriers;

    .line 1039
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    nop

    .line 1044
    return v2

    .line 1040
    :catch_0
    move-exception v2

    .line 1041
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "is not a valid field in class Telephony.Carriers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return v0

    .line 1035
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :cond_2
    :goto_0
    return v2
.end method

.method private static confirmWorkProfileCredentials(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 793
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 795
    .local v0, "km":Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 796
    .local v1, "unlockIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 797
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 798
    const/4 v2, 0x1

    return v2

    .line 800
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p0, "displayText"    # Ljava/lang/CharSequence;
    .param p1, "accessibileText"    # Ljava/lang/String;

    .line 663
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 664
    .local v0, "str":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v1, p1}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 665
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 664
    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 667
    return-object v0
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "localeStr"    # Ljava/lang/String;

    .line 261
    if-nez p0, :cond_0

    .line 262
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 263
    :cond_0
    const-string v0, "_"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "brokenDownLocale":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v1, :cond_1

    .line 266
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 267
    :cond_1
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v4, v1, :cond_2

    .line 268
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 270
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 832
    nop

    .line 833
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 832
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Settings"

    const-string v2, "Failed to create user context"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static enforceSameOwner(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 724
    invoke-static {p0}, Lcom/android/settings/Utils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 725
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 726
    .local v1, "profileIds":[I
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    return p1

    .line 729
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Given user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not belong to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static enforceSystemUser(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 711
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 712
    return p1

    .line 714
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given user id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must only be used from USER_SYSTEM, but current user is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forceCustomPadding(Landroid/view/View;Z)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "additive"    # Z

    .line 331
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 332
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0703fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 334
    .local v1, "paddingSide":I
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v3, v1

    .line 335
    .local v3, "paddingStart":I
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    add-int/2addr v4, v1

    .line 336
    .local v4, "paddingEnd":I
    const v5, 0x105016c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 339
    .local v5, "paddingBottom":I
    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 340
    return-void
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/widget/ListView;
    .param p3, "ignoreSidePadding"    # Z

    .line 299
    const/high16 v0, 0x2000000

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 301
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 302
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 753
    const v1, 0x10010

    .line 755
    .local v1, "flags":I
    sget-object v2, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v2

    .line 756
    :try_start_0
    sget-object v0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 757
    sget-object v5, Lcom/android/settings/Utils;->sFormatter:Ljava/util/Formatter;

    const v10, 0x10010

    const/4 v11, 0x0

    move-object v4, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-static/range {v4 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    .line 757
    return-object v0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .line 241
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 244
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 246
    :cond_1
    const-string v0, ""

    .line 247
    .local v0, "addresses":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_3
    return-object v0
.end method

.method public static getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profileId"    # I

    .line 627
    const-string v0, "device_policy"

    .line 628
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 629
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 630
    .local v1, "mdmPackage":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 631
    return-object v2

    .line 633
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "mdmPackageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 636
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 637
    invoke-interface {v4, v3, v5, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 638
    .local v2, "mdmApplicationInfo":Landroid/content/pm/ApplicationInfo;
    return-object v2

    .line 639
    .end local v2    # "mdmApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v4

    .line 640
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while retrieving application info for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    return-object v2
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 806
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x400200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 810
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 811
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find info for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "iconDrawableFactory"    # Landroid/util/IconDrawableFactory;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1000
    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p1, p2, v0, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1002
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0, v0, p3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1003
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .line 279
    invoke-static {p0}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCredentialOwnerUserId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 737
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getCredentialOwnerUserId(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 744
    invoke-static {p0}, Lcom/android/settings/Utils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 745
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    return v1
.end method

.method public static getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 877
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 879
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method public static getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;
    .locals 5
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "checkUser"    # Landroid/os/UserHandle;

    .line 579
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 580
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 581
    .local v1, "checkUserId":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 582
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v1, :cond_0

    .line 583
    return-object v3

    .line 585
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 586
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0

    .line 844
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 600
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 601
    .local v0, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 603
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 604
    .local v2, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 605
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 606
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v4}, Landroid/content/pm/IntentFilterVerificationInfo;->getDomains()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 607
    .local v6, "host":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v6    # "host":Ljava/lang/String;
    goto :goto_1

    .line 609
    .end local v4    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_0
    goto :goto_0

    .line 611
    :cond_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 612
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    .line 613
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "http"

    .line 614
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "https"

    .line 615
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 616
    :cond_2
    invoke-virtual {v4}, Landroid/content/IntentFilter;->getHostsList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 618
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_3
    goto :goto_2

    .line 620
    :cond_4
    return-object v2
.end method

.method public static getInstallationStatus(Landroid/content/pm/ApplicationInfo;)I
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 933
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 934
    const v0, 0x7f1209c9

    return v0

    .line 936
    :cond_0
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120770

    goto :goto_0

    :cond_1
    const v0, 0x7f12056c

    :goto_0
    return v0
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 360
    .local v6, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 366
    .local v7, "localRawProfile":Landroid/database/Cursor;
    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    .line 369
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 370
    nop

    .line 374
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 370
    return-object v8

    .line 372
    :cond_1
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v10, v0

    .line 374
    .local v10, "localRowProfileId":J
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 375
    nop

    .line 374
    nop

    .line 378
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 379
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v0, "data2"

    const-string v2, "data3"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 378
    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 384
    .local v0, "structuredName":Landroid/database/Cursor;
    if-nez v0, :cond_2

    return-object v8

    .line 387
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 388
    nop

    .line 396
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 388
    return-object v8

    .line 390
    :cond_3
    :try_start_3
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "partialName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 392
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    .line 394
    :cond_4
    nop

    .line 396
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 394
    return-object v1

    .line 396
    .end local v1    # "partialName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 374
    .end local v0    # "structuredName":Landroid/database/Cursor;
    .end local v10    # "localRowProfileId":J
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getLocalizedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .line 1009
    if-nez p0, :cond_0

    .line 1010
    const/4 v0, 0x0

    return-object v0

    .line 1013
    :cond_0
    const/4 v0, 0x0

    .line 1014
    .local v0, "localizedName":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1015
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    .line 1016
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1015
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1017
    .local v1, "resId":I
    if-lez v1, :cond_1

    .line 1019
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1020
    const-string v2, "Settings"

    const-string v3, "Replaced apn name with localized name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    goto :goto_0

    .line 1021
    :catch_0
    move-exception v2

    .line 1022
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "Settings"

    const-string v4, "Got execption while getting the localized apn name."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    .end local v1    # "resId":I
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;

    .line 426
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 427
    .local v0, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 428
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 429
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 430
    .local v3, "profile":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 431
    goto :goto_1

    .line 433
    :cond_0
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 435
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x3e7

    if-eq v5, v6, :cond_1

    .line 436
    return-object v3

    .line 428
    .end local v3    # "profile":Landroid/os/UserHandle;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getManagedProfileId(Landroid/os/UserManager;I)I
    .locals 4
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "parentUserId"    # I

    .line 471
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 472
    .local v0, "profileIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 473
    .local v3, "profileId":I
    if-eq v3, p1, :cond_0

    .line 474
    return v3

    .line 472
    .end local v3    # "profileId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :cond_1
    const/16 v1, -0x2710

    return v1
.end method

.method public static getManagedProfileWithDisabled(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 6
    .param p0, "userManager"    # Landroid/os/UserManager;

    .line 452
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 453
    .local v0, "myUserId":I
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 454
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 455
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 456
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 457
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 459
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    return-object v5

    .line 455
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 462
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "full"    # Z

    .line 343
    if-eqz p1, :cond_0

    .line 344
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 402
    .local v6, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "display_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 404
    .local v0, "profile":Landroid/database/Cursor;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 407
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 408
    nop

    .line 412
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 408
    return-object v1

    .line 410
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 410
    return-object v1

    .line 412
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getSafeDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "original"    # Landroid/graphics/drawable/Drawable;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 968
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 969
    .local v0, "actualWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    .line 971
    .local v1, "actualHeight":I
    if-gt v0, p1, :cond_0

    if-gt v1, p2, :cond_0

    .line 972
    return-object p0

    .line 975
    :cond_0
    int-to-float v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 976
    .local v2, "scaleWidth":F
    int-to-float v3, p2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 977
    .local v3, "scaleHeight":F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 978
    .local v4, "scale":F
    int-to-float v5, v0

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 979
    .local v5, "width":I
    int-to-float v6, v1

    mul-float/2addr v6, v4

    float-to-int v6, v6

    .line 982
    .local v6, "height":I
    instance-of v7, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 983
    move-object v7, p0

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v5, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 986
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 987
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 988
    .local v9, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {p0, v8, v8, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 989
    invoke-virtual {p0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 991
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v8
.end method

.method public static getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 8
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .line 497
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 498
    .local v0, "currentUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 500
    .local v1, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "launchedFromPackage":Ljava/lang/String;
    const-string v3, "com.android.settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 503
    .local v3, "launchedFromSettingsApp":Z
    new-instance v4, Landroid/os/UserHandle;

    .line 504
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v5

    .line 503
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 505
    .local v4, "launchedFromUser":Landroid/os/UserHandle;
    invoke-virtual {v4, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 507
    invoke-static {p1, v4}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 508
    return-object v4

    .line 511
    :cond_0
    invoke-static {p3}, Lcom/android/settings/Utils;->getUserHandleFromBundle(Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v5

    .line 512
    .local v5, "extrasUser":Landroid/os/UserHandle;
    if-eqz v5, :cond_1

    invoke-virtual {v5, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 514
    if-eqz v3, :cond_1

    invoke-static {p1, v5}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 515
    return-object v5

    .line 518
    :cond_1
    invoke-static {p2}, Lcom/android/settings/Utils;->getUserHandleFromBundle(Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v6

    .line 519
    .local v6, "argumentsUser":Landroid/os/UserHandle;
    if-eqz v6, :cond_2

    invoke-virtual {v6, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 521
    if-eqz v3, :cond_2

    invoke-static {p1, v6}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    .line 522
    return-object v6

    .line 528
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    .end local v3    # "launchedFromSettingsApp":Z
    .end local v4    # "launchedFromUser":Landroid/os/UserHandle;
    .end local v5    # "extrasUser":Landroid/os/UserHandle;
    .end local v6    # "argumentsUser":Landroid/os/UserHandle;
    :cond_2
    goto :goto_0

    .line 525
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Settings"

    const-string v4, "Could not talk to activity manager."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 351
    invoke-static {p0}, Lcom/android/settings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "given":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getUserHandleFromBundle(Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 537
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 538
    return-object v0

    .line 540
    :cond_0
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 541
    .local v1, "user":Landroid/os/UserHandle;
    if-eqz v1, :cond_1

    .line 542
    return-object v1

    .line 544
    :cond_1
    const-string v2, "android.intent.extra.USER_ID"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 545
    .local v2, "userId":I
    if-eq v2, v3, :cond_2

    .line 546
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 548
    :cond_2
    return-object v0
.end method

.method public static getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 678
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public static getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "isInternal"    # Z

    .line 692
    if-nez p1, :cond_0

    .line 693
    invoke-static {p0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 695
    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, "allow_any_user"

    .line 696
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    .line 697
    .local v0, "allowAnyUser":Z
    :cond_1
    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 698
    .local v1, "userId":I
    const/16 v2, -0x270f

    if-ne v1, v2, :cond_3

    .line 699
    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->enforceSystemUser(Landroid/content/Context;I)I

    move-result v2

    :goto_0
    return v2

    .line 701
    :cond_3
    if-eqz v0, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v2

    :goto_1
    return v2
.end method

.method public static getUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 200
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 201
    .local v0, "um":Landroid/os/UserManager;
    if-eqz v0, :cond_0

    .line 204
    return-object v0

    .line 202
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to load UserManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 229
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 230
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    .line 231
    .local v1, "currentNetwork":Landroid/net/Network;
    if-eqz v1, :cond_0

    .line 232
    const-string v2, "connectivity"

    .line 233
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 234
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    .line 235
    .local v3, "prop":Landroid/net/LinkProperties;
    invoke-static {v3}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 237
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "prop":Landroid/net/LinkProperties;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static hasFingerprintHardware(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 849
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 850
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 417
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 418
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 417
    :goto_0
    return v1
.end method

.method public static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 590
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x101008c

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 593
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 595
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 596
    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static isBandwidthControlEnabled()Z
    .locals 3

    .line 647
    const-string v0, "network_management"

    .line 648
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 650
    .local v0, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 651
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public static isBatteryPresent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .line 275
    const-string v0, "present"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDemoUser(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 873
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 763
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static isManagedProfile(Landroid/os/UserManager;)Z
    .locals 1
    .param p0, "userManager"    # Landroid/os/UserManager;

    .line 1192
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;I)Z
    .locals 3
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "userId"    # I

    .line 1201
    if-eqz p0, :cond_2

    .line 1204
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1206
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    const/16 v1, 0x3e7

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 1207
    return v2

    .line 1209
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    nop

    :cond_1
    return v2

    .line 1202
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .line 211
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isMultiAppEnable(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1214
    .local p0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .line 1215
    .local v0, "isMultiAppEnable":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1216
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_0

    .line 1217
    const/4 v0, 0x1

    .line 1218
    goto :goto_1

    .line 1220
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 1221
    :cond_1
    :goto_1
    return v0
.end method

.method public static isNetworkSettingsApkAvailable()Z
    .locals 2

    .line 1053
    const-string v0, "extphone"

    .line 1054
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    .line 1056
    .local v0, "extTelephony":Lorg/codeaurora/internal/IExtTelephony;
    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "com.qualcomm.qti.networksetting"

    .line 1057
    invoke-interface {v0, v1}, Lorg/codeaurora/internal/IExtTelephony;->isVendorApkAvailable(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1059
    const/4 v1, 0x1

    return v1

    .line 1061
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1063
    :cond_0
    nop

    .line 1064
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isPackageDirectBootAware(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 819
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 821
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isDirectBootAware()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPartiallyDirectBootAware()Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 822
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 824
    return v0
.end method

.method public static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p0, "user"    # Landroid/content/pm/UserInfo;
    .param p1, "profile"    # Landroid/content/pm/UserInfo;

    .line 889
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    .locals 3
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "otherUser"    # Landroid/os/UserHandle;

    .line 555
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 556
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 557
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 556
    :goto_1
    return v0

    .line 555
    :cond_3
    :goto_2
    return v0
.end method

.method public static isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z
    .locals 6
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 915
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 916
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 917
    return v2

    .line 919
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 920
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 921
    .local v4, "cn":Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 922
    return v2

    .line 919
    .end local v4    # "cn":Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 218
    const-string v0, "phone"

    .line 219
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 220
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isVolumeValid(Landroid/os/storage/VolumeInfo;)Z
    .locals 2
    .param p0, "volume"    # Landroid/os/storage/VolumeInfo;

    .line 940
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 941
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 940
    :goto_0
    return v0
.end method

.method public static launchIntent(Landroid/app/Fragment;Landroid/content/Intent;)V
    .locals 4
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 860
    :try_start_0
    const-string v0, "android.intent.extra.USER_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 862
    .local v0, "userId":I
    if-ne v0, v1, :cond_0

    .line 863
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    .end local v0    # "userId":I
    :goto_0
    goto :goto_1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method

.method public static maybeInitializeVolume(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p0, "sm"    # Landroid/os/storage/StorageManager;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 900
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    const-string v1, "private"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "volumeId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 903
    .local v1, "volume":Landroid/os/storage/VolumeInfo;
    invoke-static {v1}, Lcom/android/settings/Utils;->isVolumeValid(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResPackageName"    # Ljava/lang/String;
    .param p4, "titleResId"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "isShortcut"    # Z

    .line 1157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1159
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1161
    const-string v1, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    const-string v1, ":settings:show_fragment_title_resid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1164
    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1165
    const-string v1, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1166
    return-object v0
.end method

.method public static onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResPackageName"    # Ljava/lang/String;
    .param p4, "titleResId"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "isShortcut"    # Z
    .param p7, "sourceMetricsCategory"    # I

    .line 1172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1174
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1176
    const-string v1, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1178
    const-string v1, ":settings:show_fragment_title_resid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1179
    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1180
    const-string v1, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1182
    return-object v0
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 7
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/view/View;
    .param p3, "ignoreSidePadding"    # Z

    .line 312
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 313
    .local v0, "movePadding":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 315
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0703fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 316
    .local v4, "paddingSide":I
    const v5, 0x105016c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 319
    .local v5, "paddingBottom":I
    instance-of v6, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v6, :cond_2

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v1, v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 322
    if-eqz p3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    .line 323
    .local v1, "effectivePaddingSide":I
    :goto_1
    invoke-virtual {p2, v1, v2, v1, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 324
    .end local v1    # "effectivePaddingSide":I
    goto :goto_2

    .line 325
    :cond_2
    invoke-virtual {p2, v4, v2, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 328
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "paddingSide":I
    .end local v5    # "paddingBottom":I
    :cond_3
    :goto_2
    return-void
.end method

.method public static setEditTextCursorPosition(Landroid/widget/EditText;)V
    .locals 1
    .param p0, "editText"    # Landroid/widget/EditText;

    .line 945
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 946
    return-void
.end method

.method public static setSafeIcon(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "pref"    # Landroid/support/v7/preference/Preference;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 953
    move-object v0, p1

    .line 954
    .local v0, "safeIcon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/graphics/drawable/VectorDrawable;

    if-nez v1, :cond_0

    .line 955
    const/16 v1, 0x1f4

    invoke-static {p1, v1, v1}, Lcom/android/settings/Utils;->getSafeDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 957
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 958
    return-void
.end method

.method public static showSimCardTile(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 566
    const-string v0, "phone"

    .line 567
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 569
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .line 769
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    invoke-static {p2}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 771
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 772
    const/4 v1, 0x1

    return v1

    .line 774
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .line 1087
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;Z)V

    .line 1089
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "isShortcut"    # Z

    .line 1117
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move-object v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1119
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1120
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1122
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1124
    :goto_0
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResPackageName"    # Ljava/lang/String;
    .param p6, "titleResId"    # I
    .param p7, "title"    # Ljava/lang/CharSequence;

    .line 1110
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;Z)V

    .line 1112
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResPackageName"    # Ljava/lang/String;
    .param p6, "titleResId"    # I
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "isShortcut"    # Z

    .line 1129
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    move v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1131
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1132
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1136
    :goto_0
    return-void
.end method

.method public static unlockWorkProfileIfNecessary(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 779
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 781
    return v0

    .line 785
    :cond_0
    nop

    .line 786
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    return v0

    .line 789
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->confirmWorkProfileCredentials(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 783
    :catch_0
    move-exception v1

    .line 784
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentPreferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 157
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 158
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    return v1

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 163
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 166
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 167
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 168
    .local v5, "listSize":I
    move v6, v1

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 169
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 170
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    .line 174
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 178
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v7, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    :cond_1
    return v9

    .line 168
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 189
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "listSize":I
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 191
    return v1
.end method
