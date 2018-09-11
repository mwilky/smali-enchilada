.class public Lcom/android/settingslib/HelpUtils;
.super Ljava/lang/Object;
.source "HelpUtils.java"


# static fields
.field private static final EXTRA_BACKUP_URI:Ljava/lang/String; = "EXTRA_BACKUP_URI"

.field private static final EXTRA_CONTEXT:Ljava/lang/String; = "EXTRA_CONTEXT"

.field private static final EXTRA_PRIMARY_COLOR:Ljava/lang/String; = "EXTRA_PRIMARY_COLOR"

.field private static final EXTRA_THEME:Ljava/lang/String; = "EXTRA_THEME"

.field private static final MENU_HELP:I = 0x65

.field private static final PARAM_LANGUAGE_CODE:Ljava/lang/String; = "hl"

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String;

.field private static sCachedVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/settingslib/HelpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/HelpUtils;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/settingslib/HelpUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addIntentParameters(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "backupContext"    # Ljava/lang/String;
    .param p3, "sendPackageName"    # Z

    .line 181
    const-string v0, "EXTRA_CONTEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "EXTRA_CONTEXT"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x112009a

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 190
    .local v1, "includePackageName":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    if-eqz v1, :cond_1

    .line 191
    new-array v4, v2, [Ljava/lang/String;

    const v5, 0x104015d

    .line 192
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 193
    .local v4, "packageNameKey":[Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    const v6, 0x104015e

    .line 194
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 196
    .local v5, "packageNameValue":[Ljava/lang/String;
    const v6, 0x104015b

    .line 197
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "helpIntentExtraKey":Ljava/lang/String;
    const v7, 0x104015c

    .line 199
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "helpIntentNameKey":Ljava/lang/String;
    const v8, 0x1040150

    .line 201
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "feedbackIntentExtraKey":Ljava/lang/String;
    const v9, 0x1040151

    .line 204
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, "feedbackIntentNameKey":Ljava/lang/String;
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p1, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    .end local v4    # "packageNameKey":[Ljava/lang/String;
    .end local v5    # "packageNameValue":[Ljava/lang/String;
    .end local v6    # "helpIntentExtraKey":Ljava/lang/String;
    .end local v7    # "helpIntentNameKey":Ljava/lang/String;
    .end local v8    # "feedbackIntentExtraKey":Ljava/lang/String;
    .end local v9    # "feedbackIntentNameKey":Ljava/lang/String;
    :cond_1
    const-string v4, "EXTRA_THEME"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    new-array v2, v2, [I

    const v4, 0x1010433

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 212
    .local v2, "array":Landroid/content/res/TypedArray;
    const-string v4, "EXTRA_PRIMARY_COLOR"

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    return-void
.end method

.method public static getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "helpUriString"    # Ljava/lang/String;
    .param p2, "backupContext"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 149
    return-object v1

    .line 153
    :cond_0
    const/4 v0, 0x3

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-static {p0, v0, p2, v2}, Lcom/android/settingslib/HelpUtils;->addIntentParameters(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    .line 157
    .local v2, "component":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 158
    return-object v0

    .line 159
    :cond_1
    const-string v3, "EXTRA_BACKUP_URI"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    const-string v1, "EXTRA_BACKUP_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 164
    :cond_2
    return-object v1

    .line 166
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "component":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 169
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/HelpUtils;->uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 173
    .local v0, "fullUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    return-object v1
.end method

.method public static prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "helpUriResource"    # I
    .param p3, "backupContext"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public static prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "helpUri"    # Ljava/lang/String;
    .param p3, "backupContext"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public static prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "helpMenuItem"    # Landroid/view/MenuItem;
    .param p2, "helpUriString"    # Ljava/lang/String;
    .param p3, "backupContext"    # Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    return v2

    .line 108
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    return v2

    .line 115
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 120
    new-instance v1, Lcom/android/settingslib/HelpUtils$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/HelpUtils$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 134
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 135
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    return v1

    .line 137
    :cond_2
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 138
    return v2
.end method

.method private static uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;

    .line 222
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 225
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 228
    sget-object v1, Lcom/android/settingslib/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 232
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 232
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 234
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settingslib/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    .line 237
    const-string v2, "version"

    sget-object v3, Lcom/android/settingslib/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settingslib/HelpUtils;->TAG:Ljava/lang/String;

    const-string v3, "Invalid package name for context"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    goto :goto_1

    .line 244
    :cond_0
    const-string v1, "version"

    sget-object v2, Lcom/android/settingslib/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 248
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
