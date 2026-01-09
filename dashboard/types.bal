// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

# Represents the connector store metadata from .connector-store.meta.json
type ConnectorMeta record {|
    string name?;
    string displayName?;
    string product?;
    string description?;
    string category?;
    string version?;
    json...;
|};

# Represents an MI Connector repository
type MIConnector record {|
    string name;
    string fullName;
    string htmlUrl;
    string description;
    string defaultBranch;
    boolean archived;
    ConnectorMeta? meta;
|};

# Represents a list of connectors
type ConnectorList record {|
    MIConnector[] mi_connectors;
|};

# Represents a workflow badge
type WorkflowBadge record {|
    string name;
    string badgeUrl = NA_BADGE;
    string htmlUrl = "";
|};

# Represents all badges for a repository
type RepoBadges record {|
    WorkflowBadge release?;
    WorkflowBadge buildStatus?;
    WorkflowBadge issues?;
    WorkflowBadge pullRequests?;
|};

# Represents a GitHub repository from API
type GitHubRepo record {|
    string name;
    string full_name;
    string html_url;
    string? description;
    string default_branch;
    boolean archived;
    json...;
|};

# Represents the connector list JSON output
type ConnectorListOutput record {|
    ConnectorOutput[] mi_connectors;
|};

# Represents a connector in the output JSON
type ConnectorOutput record {|
    string name;
    string displayName;
    string repository;
    string description;
    string url;
    ConnectorMeta? meta;
|};
