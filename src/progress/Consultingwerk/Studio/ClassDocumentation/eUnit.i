/**********************************************************************
 * Copyright 2013 Consultingwerk Ltd.                                 *
 *                                                                    *
 * Licensed under the Apache License, Version 2.0 (the "License");    *
 * you may not use this file except in compliance with the License.   *
 * You may obtain a copy of the License at                            *
 *                                                                    *
 *     http://www.apache.org/licenses/LICENSE-2.0                     *
 *                                                                    *
 * Unless required by applicable law or agreed to in writing,         *
 * software distributed under the License is distributed on an        *
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,       *
 * either express or implied. See the License for the specific        *
 * language governing permissions and limitations under the License.  *
 *                                                                    *
 **********************************************************************/
/*------------------------------------------------------------------------
    File        : eUnit.i
    Purpose     : Temp-Table for Compile Unit

    Syntax      :

    Description :

    Author(s)   : Mike Fechner / Consultingwerk Ltd.
    Created     : Mon Sep 10 18:59:26 CEST 2012
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

DEFINE {&ACCESS} TEMP-TABLE eUnit NO-UNDO {&REFERENCE-ONLY} BEFORE-TABLE eUnitBefore
    FIELD GUID           AS CHARACTER
    FIELD PackageName    AS CHARACTER
    FIELD ClassName      AS CHARACTER
    FIELD Inherits       AS CHARACTER
    FIELD IsAbstract     AS LOGICAL INITIAL FALSE
    FIELD IsFinal        AS LOGICAL INITIAL FALSE
    FIELD IsInterface    AS LOGICAL INITIAL FALSE
    FIELD IsEnum         AS LOGICAL INITIAL FALSE
    FIELD IsSerializable AS LOGICAL INITIAL FALSE
    FIELD UseWidgetPool  AS LOGICAL INITIAL FALSE
    FIELD ClassComment AS CLOB COLUMN-CODEPAGE "UTF-8":U
    INDEX GUID IS UNIQUE PRIMARY GUID
    .