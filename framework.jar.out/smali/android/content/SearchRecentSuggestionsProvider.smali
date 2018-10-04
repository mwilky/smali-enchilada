.class public Landroid/content/SearchRecentSuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "SearchRecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final DATABASE_MODE_2LINES:I = 0x2

.field public static final DATABASE_MODE_QUERIES:I = 0x1

.field private static final DATABASE_VERSION:I = 0x200

.field private static final NULL_COLUMN:Ljava/lang/String; = "query"

.field private static final ORDER_BY:Ljava/lang/String; = "date DESC"

.field private static final TAG:Ljava/lang/String; = "SuggestionsProvider"

.field private static final URI_MATCH_SUGGEST:I = 0x1

.field private static final sDatabaseName:Ljava/lang/String; = "suggestions.db"

.field private static final sSuggestions:Ljava/lang/String; = "suggestions"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMode:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSuggestSuggestionClause:Ljava/lang/String;

.field private mSuggestionProjection:[Ljava/lang/String;

.field private mSuggestionsUri:Landroid/net/Uri;

.field private mTwoLineDisplay:Z

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "suggestions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "suggestions"

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v3

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown Uri"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown Uri"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "suggestions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_1

    const-string/jumbo v1, "vnd.android.cursor.dir/suggestion"

    return-object v1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string/jumbo v1, "vnd.android.cursor.item/suggestion"

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown Uri"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    const-wide/16 v3, -0x1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "suggestions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    if-ne v1, v2, :cond_0

    const-string/jumbo v2, "suggestions"

    const-string/jumbo v7, "query"

    invoke-virtual {v0, v2, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v2, v3, v8

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionsUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :cond_0
    cmp-long v2, v3, v8

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v6

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown Uri"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown Uri"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate()Z
    .locals 3

    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    iget v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    add-int/2addr v0, v1

    new-instance v1, Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/SearchRecentSuggestionsProvider$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provider not configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroid/content/SearchRecentSuggestionsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    iget-object v4, v0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v6, :cond_2

    aget-object v4, p4, v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v16, v4

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p4, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v8, v0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    if-eqz v8, :cond_1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v7

    aput-object v4, v5, v6

    goto :goto_1

    :cond_1
    new-array v5, v6, [Ljava/lang/String;

    aput-object v4, v5, v7

    :goto_1
    iget-object v4, v0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    goto :goto_0

    :goto_2
    const-string/jumbo v14, "suggestions"

    iget-object v4, v0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "date DESC"

    const/16 v21, 0x0

    move-object/from16 v13, v22

    move-object v15, v4

    move-object/from16 v17, v5

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-interface {v4, v6, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v4

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-eq v13, v6, :cond_4

    if-ne v13, v5, :cond_3

    goto :goto_3

    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown Uri"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    const-string/jumbo v4, "suggestions"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    array-length v8, v2

    if-lez v8, :cond_5

    array-length v8, v2

    add-int/2addr v8, v6

    new-array v4, v8, [Ljava/lang/String;

    array-length v8, v2

    invoke-static {v2, v7, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v2

    const-string v8, "_id AS _id"

    aput-object v8, v4, v7

    :cond_5
    move-object v15, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v12, v4

    if-ne v13, v5, :cond_6

    const-string v4, "(_id = "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    const-string v4, " AND "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v4, 0x28

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, v22

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/SearchRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v4

    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown Uri"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected setupSuggestions(Ljava/lang/String;I)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    iput p2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/suggestions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionsUri:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Landroid/content/SearchRecentSuggestionsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v3, "search_suggest_query"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-boolean v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mTwoLineDisplay:Z

    if-eqz v0, :cond_1

    const-string v0, "display1 LIKE ? OR display2 LIKE ?"

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    const-string v1, "0 AS suggest_format"

    const-string v2, "\'android.resource://system/17301578\' AS suggest_icon_1"

    const-string v3, "display1 AS suggest_text_1"

    const-string v4, "display2 AS suggest_text_2"

    const-string/jumbo v5, "query AS suggest_intent_query"

    const-string v6, "_id"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "display1 LIKE ?"

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestSuggestionClause:Ljava/lang/String;

    const-string v0, "0 AS suggest_format"

    const-string v1, "\'android.resource://system/17301578\' AS suggest_icon_1"

    const-string v2, "display1 AS suggest_text_1"

    const-string/jumbo v3, "query AS suggest_intent_query"

    const-string v4, "_id"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SearchRecentSuggestionsProvider;->mSuggestionProjection:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
