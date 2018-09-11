.class public Landroidx/slice/compat/SlicePermissionActivity;
.super Landroid/app/Activity;
.source "SlicePermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final MAX_LABEL_SIZE_PX:F = 500.0f

.field private static final TAG:Ljava/lang/String; = "SlicePermissionActivity"


# instance fields
.field private mCallingPkg:Ljava/lang/String;

.field private mProviderPkg:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private loadSafeLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 91
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "labelStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 99
    .local v2, "labelLength":I
    const/4 v3, 0x0

    move-object v4, v1

    move v1, v3

    .line 100
    .local v1, "offset":I
    .local v4, "labelStr":Ljava/lang/String;
    :goto_0
    if-ge v1, v2, :cond_3

    .line 101
    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 102
    .local v5, "codePoint":I
    invoke-static {v5}, Ljava/lang/Character;->getType(I)I

    move-result v6

    .line 103
    .local v6, "type":I
    const/16 v7, 0xd

    if-eq v6, v7, :cond_2

    const/16 v7, 0xf

    if-eq v6, v7, :cond_2

    const/16 v7, 0xe

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v8, v1

    .line 111
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v1, v7

    .line 115
    .end local v5    # "codePoint":I
    .end local v6    # "type":I
    goto :goto_0

    .line 106
    .restart local v5    # "codePoint":I
    .restart local v6    # "type":I
    :cond_2
    :goto_1
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 107
    nop

    .line 117
    .end local v5    # "codePoint":I
    .end local v6    # "type":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 118
    .end local v4    # "labelStr":Ljava/lang/String;
    .local v3, "labelStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 119
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v4

    .line 121
    :cond_4
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 122
    .local v4, "paint":Landroid/text/TextPaint;
    const/high16 v5, 0x42280000    # 42.0f

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 124
    const/high16 v5, 0x43fa0000    # 500.0f

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 129
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/compat/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    iget-object v2, p0, Landroidx/slice/compat/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 131
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 130
    invoke-static {p0, v0, v1, v2}, Landroidx/slice/compat/SliceProviderCompat;->grantSlicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->finish()V

    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "slice_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 60
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "provider_pkg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mProviderPkg:Ljava/lang/String;

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/compat/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 66
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroidx/slice/compat/SlicePermissionActivity;->loadSafeLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "app1":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v2

    iget-object v4, p0, Landroidx/slice/compat/SlicePermissionActivity;->mProviderPkg:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Landroidx/slice/compat/SlicePermissionActivity;->loadSafeLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 70
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v2, v4}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "app2":Ljava/lang/CharSequence;
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Landroidx/slice/core/R$string;->abc_slice_permission_title:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 72
    invoke-virtual {p0, v5, v6}, Landroidx/slice/compat/SlicePermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Landroidx/slice/core/R$layout;->abc_slice_permission_request:I

    .line 73
    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Landroidx/slice/core/R$string;->abc_slice_permission_deny:I

    .line 74
    invoke-virtual {v4, v5, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Landroidx/slice/core/R$string;->abc_slice_permission_allow:I

    .line 75
    invoke-virtual {v4, v5, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 76
    invoke-virtual {v4, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 78
    .local v4, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    sget v6, Landroidx/slice/core/R$id;->text1:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 79
    .local v5, "t1":Landroid/widget/TextView;
    sget v6, Landroidx/slice/core/R$string;->abc_slice_permission_text_1:I

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v3

    invoke-virtual {p0, v6, v8}, Landroidx/slice/compat/SlicePermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    sget v8, Landroidx/slice/core/R$id;->text2:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 81
    .local v6, "t2":Landroid/widget/TextView;
    sget v8, Landroidx/slice/core/R$string;->abc_slice_permission_text_2:I

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v3

    invoke-virtual {p0, v8, v7}, Landroidx/slice/compat/SlicePermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "app1":Ljava/lang/CharSequence;
    .end local v2    # "app2":Ljava/lang/CharSequence;
    .end local v4    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v5    # "t1":Landroid/widget/TextView;
    .end local v6    # "t2":Landroid/widget/TextView;
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "SlicePermissionActivity"

    const-string v2, "Couldn\'t find package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->finish()V

    .line 86
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 138
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->finish()V

    .line 139
    return-void
.end method
