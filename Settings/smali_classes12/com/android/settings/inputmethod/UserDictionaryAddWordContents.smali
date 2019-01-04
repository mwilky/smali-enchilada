.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    }
.end annotation


# static fields
.field public static final EXTRA_LOCALE:Ljava/lang/String; = "locale"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_ORIGINAL_SHORTCUT:Ljava/lang/String; = "originalShortcut"

.field public static final EXTRA_ORIGINAL_WORD:Ljava/lang/String; = "originalWord"

.field public static final EXTRA_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final EXTRA_WORD:Ljava/lang/String; = "word"

.field private static final FREQUENCY_FOR_USER_DICTIONARY_ADDS:I = 0xfa

.field private static final HAS_WORD_PROJECTION:[Ljava/lang/String;

.field private static final HAS_WORD_SELECTION_ALL_LOCALES:Ljava/lang/String; = "word=? AND locale is null"

.field private static final HAS_WORD_SELECTION_ONE_LOCALE:Ljava/lang/String; = "word=? AND locale=?"

.field public static final MODE_EDIT:I = 0x0

.field public static final MODE_INSERT:I = 0x1


# instance fields
.field private mLocale:Ljava/lang/String;

.field private final mMode:I

.field private final mOldShortcut:Ljava/lang/String;

.field private final mOldWord:Ljava/lang/String;

.field private mSavedShortcut:Ljava/lang/String;

.field private mSavedWord:Ljava/lang/String;

.field private final mShortcutEditText:Landroid/widget/EditText;

.field private final mWordEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "word"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a05c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    const v0, 0x7f0a05c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    const-string v0, "word"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const-string v1, "shortcut"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v2, "mode"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    const-string v2, "word"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    const-string v2, "shortcut"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    const-string v2, "locale"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a05c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    const v0, 0x7f0a05c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    iget-object v0, p2, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedWord:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedShortcut:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->getCurrentUserDictionaryLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    return-void
.end method

.method private static addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private hasWord(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 9

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    const-string v6, "word=? AND locale is null"

    new-array v7, v1, [Ljava/lang/String;

    aput-object p1, v7, v2

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    const-string v6, "word=? AND locale=?"

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    aput-object p1, v7, v2

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v2

    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method


# virtual methods
.method apply(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move-object v2, v3

    nop

    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    return v3

    :cond_4
    iput-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedWord:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedShortcut:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v1, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->hasWord(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    return v3

    :cond_5
    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1, v2, v0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xfa

    iget-object v6, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    :goto_1
    invoke-static {p1, v4, v5, v2, v3}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    const/4 v3, 0x0

    return v3
.end method

.method delete(Landroid/content/Context;)V
    .locals 3

    iget v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method public getCurrentUserDictionaryLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, v2, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v2, v4}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, ""

    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ""

    invoke-static {p1, v2, v3}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_2
    new-instance v3, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method saveStateIntoBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "word"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "originalWord"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v0, "shortcut"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "originalShortcut"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method updateLocale(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    return-void
.end method
